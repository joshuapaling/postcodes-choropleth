#!/bin/bash
# start with a clean slate
rm -f stats.zip
rm -rf 1270055003_poa_2011_aust_shape
rm -f detailed-postcodes.json
echo ""
echo "Contacting Australian Bureau of Statistics and downloading Files...."
echo "--------------------------------------------------------------------"
echo ""
curl 'http://www.ausstats.abs.gov.au/ausstats/subscriber.nsf/0/71B4572D909B934ECA2578D40012FE0D/$File/1270055003_poa_2011_aust_shape.zip' -H 'Connection: keep-alive' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-GB,en-US;q=0.9,en;q=0.8' -H 'Cookie: _ga=GA1.3.1555198330.1544136045; _gid=GA1.3.230698022.1544136045; __utma=24873066.1555198330.1544136045.1544136045.1544136045.1; __utmc=24873066; __utmz=24873066.1544136045.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); __utmb=24873066.1.10.1544136045; TS01df2648=01d59fe686c1f1b21945a6d65d40e5edd3f63df7538a17c3db9994603826c44f47cc328a1fbba47d601cd5837bc64316336ed26135' --compressed -o 1270055003_poa_2011_aust_shape.zip
if [ $? -ne 0 ]; then
    echo "ERROR: Failed to download file"
    exit 1
fi
echo ""
echo "download complete -- 1270055003_poa_2011_aust_shape.zip"
echo ""
echo "unzipping the files..."
echo "----------------------"
echo ""
unzip 1270055003_poa_2011_aust_shape.zip -d 1270055003_poa_2011_aust_shape/
if [ $? -ne 0 ]; then
    echo "ERROR: Failed to unzip file"
    exit 1
fi
echo ""
echo "Done"
echo ""
echo "Use the shape file and generate detailed-postcodes.json"
echo "----------------------------------------------"
echo ""
./node_modules/shapefile/bin/shp2json 1270055003_poa_2011_aust_shape/POA_2011_AUST.shp -o detailed-postcodes.json
if [ $? -ne 0 ]; then
    echo "ERROR: Failed to generate postcodes.json"
    exit 1
fi
echo "Done"
echo ""
echo "The next step you ask!"
echo "-----------------------"
echo ""
echo "To save a bunch of file size and make rendering way quicker, you can simplify it at https://mapshaper.org/"
echo "Drop json file in the map shaper and simplify"
echo ""
echo "That's all folks!"
echo "----------------"