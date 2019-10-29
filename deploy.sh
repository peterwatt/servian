aws cloudformation deploy \
    --region ap-southeast-2 \
    --template-file servian.yml \
    --stack-name TestPackage \
    --capabilities CAPABILITY_IAM

export ADDRESS=$(aws cloudformation describe-stacks --stack-name TestPackage --output text --query "Stacks[0].Outputs[?OutputKey=='Url'].{Url:OutputValue}")
echo $ADDRESS
echo
curl $ADDRESS 
echo
curl $ADDRESS 
echo
curl $ADDRESS
echo
