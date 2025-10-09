## Create ACL

```sh
aws memorydb create-acl \
    --acl-name "new-acl-1" \
    --user-names "Konigdave"
```
## Create User

```sh
aws memorydb create-user \
    --user-name Konigdave \
    --access-string "on ~* &* +@all" \
     --authentication-mode \
         Passwords="Testing23456789*",Type=password
``` 

## Create Subnet Group

```sh
aws memorydb create-subnet-group \
    --subnet-group-name mysubnetgroup \
    --description "my subnet group" \
    --subnet-ids subnet-0579c5a4cd4afdfb8 subnet-02542fd38a26d1d60 \
    --query SubnetGroup.ARN \
    --output text
```
> Note Dont use the default VPC, create one with subnets

## Create Cluster 

```sh
aws memorydb create-cluster \
    --cluster-name my-new-cluster \
    --node-type db.t4g.small \
    --acl-name new-acl-1 \
    --subnet-group mysubnetgroup
```
