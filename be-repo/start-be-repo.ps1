aws cloudformation create-stack `
  --stack-name be-repo `
  --template-body file://be-repo.yaml

aws cloudformation wait stack-create-complete --stack-name be-repo