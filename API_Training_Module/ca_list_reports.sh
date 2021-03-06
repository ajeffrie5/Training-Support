#!/bin/sh

if [ $# -ne 1 ]
then
        echo "USAGE: $0 ACCESS_TOKEN" 
        echo "Where ACCESS_TOKEN is the access token obtained from authenticating."
        exit 1
fi

# This is the token returned from the previous authentication
access_token=${1}  

echo "##########"
echo "Here is the curl command you are sending"
cat << EOF 
curl --include 
    -H "X-API-Version:1.0" 
    -H "Authorization: Bearer $access_token" 
    -X GET "https://analytics.rightscale.com/api/scheduled_reports"
EOF
echo ""
echo "#########"
echo ""
echo "Hit return to continue ..."
read anykey
echo ""

curl --include \
    -H "X-API-Version:1.0" \
    -H "Authorization: Bearer $access_token" \
    -X GET "https://analytics.rightscale.com/api/scheduled_reports"
            
echo ""
echo ""