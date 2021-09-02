aws cloudformation create-stack `
  --stack-name BE-Repo `
  --template-body file://be-repo.yaml

aws cloudformation wait stack-create-complete --stack-name BE-Repo