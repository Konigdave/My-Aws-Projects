# Create Serverless Cache

```sh
aws elasticache create-serverless-cache \
--serverless-cache-name my-cache-ac-2345 \
--engine redis \
--major-engine-version 7
```

# Install Redis Client (Ubuntu)

```sh
sudo apt-get install redis-tools
sudo apt-get install redis
```

# Connect to instance
```sh
redis-cli my-cache-ac-2345-kgk7zb.serverless.cac1.cache.amazonaws.com:6379
```