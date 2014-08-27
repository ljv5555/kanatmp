#!/bin/bash
echo running build.sh for EIG_DEV2
curl -k -L  "https://raw.githubusercontent.com/ljv5555/kanatmp/master/EIG_DEV2_build.sh" -H "DNT: 1" -H "Accept-Encoding: gzip,deflate" -H "Accept-Language: en-US,en;q=0.8" -H "User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2137.0 Safari/537.36" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8" -H "Cache-Control: max-age=0" -H "If-None-Match: ""361c2faa6f104e3d6ced347bb905ef48f82fa35e""" -H "Connection: keep-alive" --compressed > build.sh
echo got file: build.sh
chmod +x build.sh
echo ran chmod
echo --- begin build.sh --------------------------------
./build.sh
echo --- end build.sh   --------------------------------


 
