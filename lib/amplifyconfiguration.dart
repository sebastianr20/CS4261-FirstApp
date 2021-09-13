const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "amplifiedtodo": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://thyw5jx2yncdjihdq7ceiz3req.appsync-api.us-east-2.amazonaws.com/graphql",
                    "region": "us-east-2",
                    "authorizationType": "API_KEY",
                    "apiKey": "da2-ruucmhixhnak5fcefcvh3a2dre"
                },
                "api": {
                    "endpointType": "REST",
                    "endpoint": "https://oov9biqli6.execute-api.us-east-2.amazonaws.com/staging",
                    "region": "us-east-2",
                    "authorizationType": "AWS_IAM"
                }
            }
        }
    },
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "AppSync": {
                    "Default": {
                        "ApiUrl": "https://thyw5jx2yncdjihdq7ceiz3req.appsync-api.us-east-2.amazonaws.com/graphql",
                        "Region": "us-east-2",
                        "AuthMode": "API_KEY",
                        "ApiKey": "da2-ruucmhixhnak5fcefcvh3a2dre",
                        "ClientDatabasePrefix": "amplifiedtodo_API_KEY"
                    },
                    "amplifiedtodo_AWS_IAM": {
                        "ApiUrl": "https://thyw5jx2yncdjihdq7ceiz3req.appsync-api.us-east-2.amazonaws.com/graphql",
                        "Region": "us-east-2",
                        "AuthMode": "AWS_IAM",
                        "ClientDatabasePrefix": "amplifiedtodo_AWS_IAM"
                    }
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "us-east-2:a1b73b8d-6c78-40c4-b384-f0fc0026196b",
                            "Region": "us-east-2"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "us-east-2_AmOqQLObA",
                        "AppClientId": "2217s5meo5jstc6d41s9butgga",
                        "Region": "us-east-2"
                    }
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "USER_SRP_AUTH",
                        "loginMechanisms": [],
                        "signupAttributes": [
                            "EMAIL"
                        ],
                        "passwordProtectionSettings": {
                            "passwordPolicyMinLength": 8,
                            "passwordPolicyCharacters": [
                                "REQUIRES_LOWERCASE",
                                "REQUIRES_NUMBERS",
                                "REQUIRES_SYMBOLS",
                                "REQUIRES_UPPERCASE"
                            ]
                        },
                        "mfaConfiguration": "OFF",
                        "mfaTypes": [
                            "SMS"
                        ]
                    }
                }
            }
        }
    }
}''';