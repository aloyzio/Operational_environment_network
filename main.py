import boto3

session = boto3.session.Session()
aws_mag_client=session.client('sts')

response =aws_mag_client.get_caller_identity()
print(response.get('Account'))
print(response.get('Arn'))