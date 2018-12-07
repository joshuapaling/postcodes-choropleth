const updateChoropleth = (datafile, title, postcodes = []) => {
  d3.select('.main-heading').text(title)
  d3.select('.postcodes-heading').text(postcodes.join(', '))

  fetch(datafile)

  fetch(datafile)
    .then(function(response) {
      return response.text();
    })
    .then(function(csvDataAsText) {
      return d3.csv.parse(csvDataAsText)
    })
    .then(function(csvData) {

      csvData = csvData.filter(row => {
        // Remove some postcodes that have too much data that's not accurate
        // eg. lots of users have 2000 (Sydney CBD) as postcode because that's
        // the default for Sydney users who didn't specify or something
        if (row.postcode === '') return false
        if (row.postcode === '2000') return false
        if (row.postcode === '3000') return false
        if (row.postcode === '6000') return false
        if (row.postcode === '4000') return false
        if (row.postcode === '5000') return false
        if (row.postcode === '400013') return false
        return true
      })

      const maxValue = _.maxBy(csvData, r => parseInt(r.value)).value
      console.log('maxValue is: ', maxValue)
      csvData = _.sortBy(csvData, [function(r) { return r.value; }])
      // console.log('csvData', csvData)

      const data = {}
      csvData.forEach(row => {
        data[row.postcode] = parseInt(row.value)
      })

      var width = 960,
          height = 900,
          centered;

      // Define color scale
      var color = d3.scale.linear()
        .domain([1, maxValue])
        .clamp(true)
        .range(['#b3ffb3', '#003300']);

      var sydney = [151.2093, -33.8688]
      var melbourne = [144.9631, -37.8136]

      var projection = d3.geo.mercator()
        .scale(35850)
        // Center the Map in Sydney
        .center(sydney)
        .translate([width / 2, height / 2]);

      var path = d3.geo.path()
        .projection(projection);

      // Set svg width & height
      var svg = d3.select('svg')
        .attr('width', width)
        .attr('height', height);

      // Add background
      svg.append('rect')
        .attr('class', 'background')
        .attr('width', width)
        .attr('height', height)
        .on('click', clicked);

      var g = svg.append('g');

      var effectLayer = g.append('g')
        .classed('effect-layer', true);

      var mapLayer = g.append('g')
        .classed('map-layer', true);

      var bigText = g.append('text')
        .classed('big-text', true)
        .attr('x', height - 300)
        .attr('y', width - 100);

      // Load map data
      d3.json('postcodes.json', function(error, mapData) {
        var features = mapData.features;

        // Draw each province as a path
        mapLayer.selectAll('path')
            .data(features)
          .enter().append('path')
            .attr('d', path)
            .attr('vector-effect', 'non-scaling-stroke')
            .style('fill', fillFn)
            .on('mouseover', mouseover)
            .on('mouseout', mouseout)
            .on('click', clicked);
      });

      function postcode(d){
        var n = d.properties.POA_CODE
        return n ? parseInt(n) : 0;
      }

      // Get province color
      function fillFn(d){
        var code = postcode(d)
        if (window.showPostcodes && postcodes.includes('' + code)) return 'yellow'
        if (!data[code]) return '#fbf3f3';
        if (data[code] == 1) return '#ffccff';
        return color(data[code]);
      }

      // When clicked, zoom in
      function clicked(d) {
        var x, y, k;

        // Compute centroid of the selected path
        if (d && centered !== d) {
          var centroid = path.centroid(d);
          x = centroid[0];
          y = centroid[1];
          k = 4;
          centered = d;
        } else {
          x = width / 2;
          y = height / 2;
          k = 1;
          centered = null;
        }

        // Highlight the clicked province
        mapLayer.selectAll('path')
          .style('fill', function(d){return centered && d===centered ? '#D5708B' : fillFn(d);});

        // Zoom
        g.transition()
          .duration(750)
          .attr('transform', 'translate(' + width / 2 + ',' + height / 2 + ')scale(' + k + ')translate(' + -x + ',' + -y + ')');
      }

      function mouseover(d){
        // Highlight hovered province
        d3.select(this).style('fill', 'orange');
        const code = postcode(d)

        bigText.text(`${code}: ${data[code]} members`)
      }

      function mouseout(d){
        // Reset province color
        mapLayer.selectAll('path')
          .style('fill', function(d){return centered && d===centered ? '#D5708B' : fillFn(d);});

        // Remove effect text
        effectLayer.selectAll('text').transition()
          .style('opacity', 0)
          .remove();

        // Clear province name
        bigText.text('');
      }
    });
}
