
# Create bucket and upload file

```sh
aws s3 mb s3://rekog-exam-23455 --region us-east-1
aws s3 cp davido30bg.jpg s3://rekog-exam-23455
```

# Run ruby code

```sh
bundle install
bundle exec ruby main.rb
```