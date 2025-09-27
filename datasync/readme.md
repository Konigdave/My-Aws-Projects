## Create Buckets

```sh
aws s3 mb s3://source-datasync-2345
aws s3 mb s3://dest-datasync-2345
```

# Upload File

```sh
touch hello.txt
aws s3 cp hello.txt s3://source-datasync-2345/data/hello.txt
```