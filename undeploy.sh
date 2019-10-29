aws cloudformation delete-stack --stack-name TestPackage

aws cloudformation wait stack-delete-complete --stack-name TestPackage
