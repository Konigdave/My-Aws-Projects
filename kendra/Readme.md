## Create Bucket

aws s3 mb s3://kendra-ex-2345 --region ca-central-1
aws s3 cp oliver-twist.pdf s3://kendra-ex-2345 --region ca-central-1
aws s3 cp employee-handbook.txt s3://kendra-ex-2345 --region ca-central-1

## Create Our Index

```sh
aws kendra create-index \
--name my-index \
--description "My Index" \
--edition "DEVELOPER_EDITION" \
--role-arn arn:aws:iam::354918366000:role/KendraIndexRole \
--region ca-central-1
```

## Creating our Data Source

```sh
aws kendra create-data-source \
--index-id 0e1883e7-843f-4a94-9e93-3ff786b99302 \
--name my-data-source \
--role-arn arn:aws:iam::354918366000:role/KendraDataSourceRole \
--type S3 \
--region ca-central-1 \
--configuration '{"S3Configuration":{"BucketName":"kendra-ex-2345"}}'
```

# Oliver Twist Novel

https://e-school.kmutt.ac.th/elibrary/Upload/EBook/DSIL_Lib_E1312881157.pdf


## Sync

aws kendra start-data-source-sync-job \
--id 726c5d1f-6d28-42e5-85b4-51b0a3a1460b \
--index-id 0e1883e7-843f-4a94-9e93-3ff786b99302

## Query

aws kendra query \
--index-id 0e1883e7-843f-4a94-9e93-3ff786b99302 \
--query-text "Who do I contact about benefits?" \
--region ca-central-1
 