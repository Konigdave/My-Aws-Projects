## Create a bucket

aws s3 mb s3://new-buckt-ad-1997

## Create a file

echo "Hello World" > hello.txt
aws s3 cp hello.txt s3://new-buckt-ad-1997 --storage-class STANDARD_IA