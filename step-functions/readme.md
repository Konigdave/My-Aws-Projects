## Create Bucket

```sh
aws s3 mb s3://sf-star-trek-2345 --region ca-central-1
```

## Enable EventBridge Communication

```sh
aws s3api put-bucket-notification-configuration \
--bucket sf-star-trek-2345 \
--notification-configuration '
{
  "EventBridgeConfiguration": {
  }
}'
```

## Upload Files

```sh
aws s3 cp licensed-image.jpeg s3://sf-star-trek-2345/licensed-image.jpeg --region ca-central-1
```

## References
https://docs.aws.amazon.com/AmazonS3/latest/userguide/ev-events.html

https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-create-pattern-operators.html#eb-filtering-prefix-matching

https://docs.aws.amazon.com/rekognition/latest/APIReference/API_RecognizeCelebrities.html