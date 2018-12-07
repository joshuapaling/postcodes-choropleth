const diningLessThanTenDollarsFiles = [
    'data/Dinning/dinning_less_10_dollars/acai-brothers-manly-bowls-healthy--0060I00000Y2nZQQAZ',
    'data/Dinning/dinning_less_10_dollars/charlie-rabbit-breakfast-lunch-dessert-drinks--0060I00000Y25AuQAJ',
    'data/Dinning/dinning_less_10_dollars/five-stars-thaitanic-sydney-thai-lunch-dinner-bottle-water--0060I00000X99OqQAJ',
    'data/Dinning/dinning_less_10_dollars/poke-bros-parramatta-large-poke-bowl-bottle-water--0060I00000Y4af7QAB'
]

function readTextFile(file) {
    return new Promise(function(resolve) {
        var rawFile = new XMLHttpRequest();
        rawFile.overrideMimeType("application/json");
        rawFile.open("GET", file, true);
        rawFile.onreadystatechange = function() {
            if (rawFile.readyState === 4 && rawFile.status == "200") {
                resolve(rawFile.responseText);
            }
        }
        rawFile.send(null);
    })
}

function updateData() {
    let data = []
    for (let pathName of diningLessThanTenDollarsFiles) {
        const file = pathName + '/response.json'
        readTextFile(file)
            .then(function(text) {
                data.push(JSON.parse(text))

            })
            .catch(function(err) {
                console.log('Error: ', err)
            })
        }
}

const updateDealList = async () => {
    const dealLinksDiv = document.querySelector(".check");
    const ul = document.createElement("ul");
    dealLinksDiv.appendChild(ul);
    updateData()

}
