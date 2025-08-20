## Create a Bucket

'''
aws s3 mb s3://cors-lab-practice-2345
'''

## Change block public access

'''sh

aws s3api put-public-access-block \
    --bucket cors-lab-practice-2345 \
    --public-access-block-configuration '{"BlockPublicAcls": true, "IgnorePublicAcls": true, "BlockPublicPolicy": false, "RestrictPublicBuckets": false}'
'''

## Create a bucket policy

'''sh
aws s3api put-bucket-policy --bucket cors-lab-practice-2345 --policy file://bucket-policy.json
'''

## Turn on static website hosting

'''sh
aws s3api put-bucket-website --bucket cors-lab-practice-2345 --website-configuration file://website.json
'''

## Upload our index.html file and include a resource that would be cross-origin

aws s3 cp index.html s3://cors-lab-practice-2345

## View the website and see if the index.html is there.

http://cors-lab-practice-2345.s3-website.eu-central-1.amazonaws.com

## Apply a CORS policy

aws s3api put-bucket-cors --bucket cors-lab-practice-2345 --cors-configuration file://cors.json

