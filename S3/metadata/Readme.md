## Create a bucket

aws s3 mb s3://metadata-fun-ab-12345

## Create a new file

echo "Hello World" > hello.txt

# Upload file with metadata 

aws s3api put-object --bucket metadata-fun-ab-12345 --key hello.txt --body hello.txt  --metadata Planet=Earth

## Get Metadata through head object

aws s3api head-object --bucket metadata-fun-ab-12345 --key hello.txt 