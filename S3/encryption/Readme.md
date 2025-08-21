## Create a bucket

aws s3 mb s3://encryption-lab-ab-2345

## Create a file

echo "Hello world" > hello.txt
aws s3 cp hello.txt s3://encryption-lab-ab-2345


## Put object with encryption of SS3-KMS

aws s3api put-object \
--bucket encryption-lab-ab-2345 \
--key hello.txt \
--body hello.txt \
--server-side-encryption aws:kms \
--ssekms-key-id 63bc04a5-529f-487d-ad6e-578b6f52eaeb


### Put object with SSE-C (Failed attempt)

export BASE64_ENCODED_KEY=$(openssl rand -base64 32)

echo $BASE64_ENCODED_KEY

export MD5_VALUE=$(echo $BASE64_ENCODED_KEY | md5sum | awk '{print $1}' | base64 -w0)
echo $MD5_VALUE

aws s3api put-object \
--bucket encryption-lab-ab-2345 \
--key hello.txt \
--body hello.txt \
--sse-customer-algorithm AES256 \
--sse-customer-key $BASE64_ENCODED_KEY \
--sse-customer-key-md5 $MD5_VALUE

### Put object with SSE-C via aws s3

openssl rand -out ssec.key 32

aws s3 cp hello.txt s3://encryption-lab-ab-2345/hello.txt \
--sse-c AES256 \
--sse-c-key fileb://ssec.key

aws s3 cp s3://encryption-lab-ab-2345/hello.txt hello.txt --sse-c AES256 --sse-c-key fileb://ssec.key