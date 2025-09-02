## Create a user with no permissions


We need to create a new user with no permissions and generate out ac.cess keys

'''sh
aws iam create-user  --user-name sts-Remi
aws iam create-ac.cess-key \
    --user-name sts-Remi
'''

Copy the ac.cess key and secret here
'''sh
aws configure
'''

Then edit c.redentials file to change away from default profile



'''sh
open ~/.aws/credentials
'''

Test who you are:

'''sh
 aws sts get-caller-identity
 aws sts get-caller-identity --profile sts

Make sure you don't have access to s3

An error occurred (AccessDenied) when calling the ListBuckets operation: User: arn:aws:iam::354918366000:user/sts-Remi is not authorized to perform: s3:ListAllMyBuckets because no identity-based policy allows the s3:ListAllMyBuckets action


 '''sh
 aws s3 ls --profile sts
 '''


## Create a Role

We need to create a role that will access a new resource

## Use new user credentials and assume role