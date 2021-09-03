aws cloudformation create-stack `
  --stack-name BE-Stack `
  --template-body file://be-stack.yaml `
  --capabilities CAPABILITY_IAM `
  --parameters `
      ParameterKey=ServiceName,ParameterValue=be-service `
      ParameterKey=ImageUrl,ParameterValue=441184683115.dkr.ecr.ap-southeast-1.amazonaws.com/be-repo:latest `
      ParameterKey=ContainerPort,ParameterValue=8082 `
      ParameterKey=HealthCheckPath,ParameterValue=/health `
      ParameterKey=HealthCheckIntervalSeconds,ParameterValue=90

aws cloudformation wait stack-create-complete --stack-name BE-Stack
