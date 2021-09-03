aws cloudformation delete-stack \
  --stack-name BE-Repo

aws cloudformation wait stack-delete-complete --stack-name BE-Repo