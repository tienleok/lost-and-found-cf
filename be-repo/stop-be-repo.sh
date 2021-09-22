aws cloudformation delete-stack \
  --stack-name be-repo

aws cloudformation wait stack-delete-complete --stack-name be-repo