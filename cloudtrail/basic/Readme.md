# Create a Bucket for cloudtrail logs

aws s3 mb s3://my-cloudtrail-ab-2345

# Create bucket policy to allow cloudtrail to put to bucket

aws s3api put-bucket-policy --bucket my-cloudtrail-ab-2345 --policy file://policy.json

# Create Trail

```sh
aws cloudtrail create-trail \
    --name MyTrail \
    --s3-bucket-name my-cloudtrail-ab-2345 \
    --region ca-central-1
```

# Start logging

```sh
aws cloudtrail start-logging --name MyTrail
```