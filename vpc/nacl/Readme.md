## GET VPC ID

```SH
aws ec2 describe-vpcs \
--filters "Name=tag:Name,Values=nacl-example-vpc" \
--query "Vpcs[0].VpcId" \
--output text
```

## NACL

```sh
aws ec2 create-network-acl --vpc-id vpc-088dc21847e4940dc
```

## Add entry

```sh
aws ec2 create-network-acl-entry \
  --network-acl-id acl-08b7b6d50bc01ad21 \
  --ingress \
  --rule-number 90 \
  --protocol -1 \
  --port-range From=0,To=65535 \
  --cidr-block 149.156.124.14/32 \
  --rule-action deny
```

## Get AMI for Amazon Linux 2

```sh
aws ec2 describe-images \
  --owners amazon \
  --filters "Name=name,Values=amzn2-ami-hvm-*-x86_64-gp2" "Name=state,Values=available" \
  --region ca-central-1 \
  --query "Images | sort_by(@, &CreationDate)[-1].ImageId" \
  --output text
```
