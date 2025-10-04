require "aws-sdk-sqs"

client = Aws::SQS::Client.new

queue_url="https://sqs.ca-central-1.amazonaws.com/354918366000/sqs-standard-queue-MyQueue-1Y0fzRpLWz8n"
resp = client.send_message({
  queue_url: queue_url,
  message_body: "Hello Ruby!",
  delay_seconds: 1,
  message_attributes: {
    "Fruit" => {
      string_value: "Apple",
      data_type: "String"
    },
  }
})