const diningLessThanTenDollarsFiles = [
    'data/Dinning/dinning_less_10_dollars/acai-brothers-manly-bowls-healthy--0060I00000Y2nZQQAZ',
    'data/Dinning/dinning_less_10_dollars/charlie-rabbit-breakfast-lunch-dessert-drinks--0060I00000Y25AuQAJ',
    'data/Dinning/dinning_less_10_dollars/five-stars-thaitanic-sydney-thai-lunch-dinner-bottle-water--0060I00000X99OqQAJ',
    'data/Dinning/dinning_less_10_dollars/poke-bros-parramatta-large-poke-bowl-bottle-water--0060I00000Y4af7QAB'
]

function readTextFile(file, callback) {
    var rawFile = new XMLHttpRequest();
    rawFile.overrideMimeType("application/json");
    rawFile.open("GET", file, true);
    rawFile.onreadystatechange = function() {
        if (rawFile.readyState === 4 && rawFile.status == "200") {
            callback(rawFile.responseText);
        }
    }
    rawFile.send(null);
}


const updateDealList = () => {
    const dealLinksDiv = document.querySelector(".check");
    const ul = document.createElement("ul");
    dealLinksDiv.appendChild(ul);
    let data=[]

    for (let pathName of diningLessThanTenDollarsFiles) {
        const file = pathName + '/response.json'
        readTextFile(file, function(text){
            data.push(JSON.parse(text));
        });
    }

}
