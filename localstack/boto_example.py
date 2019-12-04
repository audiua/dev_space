import boto3

aws_credentials = {
    'aws_access_key_id': 'localstack',
    'aws_secret_access_key': 'localstack',
}

s3 = boto3.client('s3', endpoint_url='http://localhost:4572', use_ssl=False, **aws_credentials)
print(s3.list_buckets())


sqs = boto3.client('sqs', endpoint_url='http://localhost:4576', use_ssl=False, **aws_credentials)
print(sqs.list_queues())
