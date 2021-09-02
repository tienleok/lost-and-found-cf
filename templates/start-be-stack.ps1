aws cloudformation create-stack `
  --stack-name BE-Stack `
  --template-body file://be-stack.yaml `
  --capabilities CAPABILITY_IAM `
  --parameters `
      ParameterKey=ServiceName,ParameterValue=be-service `
      ParameterKey=ImageUrl,ParameterValue=docker.io/reflectoring/aws-hello-world:latest `
      ParameterKey=ContainerPort,ParameterValue=8080 `
      ParameterKey=HealthCheckPath,ParameterValue=/hello `
      ParameterKey=HealthCheckIntervalSeconds,ParameterValue=90

aws cloudformation wait stack-create-complete --stack-name BE-Stack

# aws cloudformation create-stack \
#   --stack-name reflectoring-ecs-zero-downtime-deployment-service \
#   --template-body file://service.yml \
#   --parameters \
#       ParameterKey=StackName,ParameterValue=reflectoring-ecs-zero-downtime-deployment-network \
#       ParameterKey=ServiceName,ParameterValue=reflectoring-hello-world \
#       ParameterKey=ImageUrl,ParameterValue=docker.io/reflectoring/aws-hello-world:v3 \
#       ParameterKey=ContainerPort,ParameterValue=8080 \
#       ParameterKey=HealthCheckPath,ParameterValue=/hello \
#       ParameterKey=HealthCheckIntervalSeconds,ParameterValue=90

# aws cloudformation wait stack-create-complete --stack-name reflectoring-ecs-zero-downtime-deployment-service