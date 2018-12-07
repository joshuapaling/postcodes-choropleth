updateDealList()
d3.json('postcodes.json', function(error, mapData) {
  window.features = mapData.features;
  updateChoropleth('/members-per-postcode.csv', 'Where all users live')
})
