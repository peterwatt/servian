aws cloudformation package \
    --template-file servian.yml \
    --s3-bucket peterwatt \
    --output-template-file servian-packaged.yaml

aws cloudformation deploy \
    --region 'ap-southeast-2' \
    --template-file servian-packaged.yaml \
    --stack-name 'TestPackage' \
    --capabilities CAPABILITY_IAM

export ADDRESS=$(aws cloudformation describe-stacks --stack-name TestPackage --output text --query "Stacks[0].Outputs[?OutputKey=='Url'].{Url:OutputValue}")

curl $ADDRESS
curl $ADDRESS
curl $ADDRESS
