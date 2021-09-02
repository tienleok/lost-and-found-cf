aws cloudformation delete-stack `
  --stack-name BE-Stack

aws cloudformation wait stack-delete-complete --stack-name BE-Stack