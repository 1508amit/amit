#!/bin/bash

cat /Users/amitdixit/error_json.log.1|grep -iq "[error | getPromotions | setPromotions | deletePromotions | api/v1/pricing/rates]"

if [ $? -eq "0" ]; then
        echo " CRITICAL: deletePromotions"
        exit 2
else
        echo "OK : deletePromotions"
        exit 0
fi
