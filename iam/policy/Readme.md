## Convert to json

The command
```sh
yq -o json policy.yml > policy.json
```

The bash script

```sh
./convert
```

## Create IAM policy \

```sh
aws iam create-policy \
--policy-name my-lab-policy \
--policy-document file://policy.json
```

## Attach Policy to user

```sh
aws iam attach-user-policy \
--policy-arn arn:aws:iam::354918366000:policy/my-lab-policy \
--user-name Gitpod-cli-user-Labs 
```