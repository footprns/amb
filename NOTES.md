```
aws managedblockchain create-network \
--cli-input-json '{
  "Name": "OurBlockchainNet",
  "Description": "OurBlockchainNetDesc",
  "Framework": "HYPERLEDGER_FABRIC",
  "FrameworkVersion": "2.2",
  "FrameworkConfiguration": {
    "Fabric": {
      "Edition": "STARTER"
    }
  },
  "VotingPolicy": {
    "ApprovalThresholdPolicy": {
      "ThresholdPercentage": 50,
      "ProposalDurationInHours": 24,
      "ThresholdComparator": "GREATER_THAN"
    }
  },
  "MemberConfiguration": {
    "Name": "org1",
    "Description": "Org1 first member of network",
    "FrameworkConfiguration": {
      "Fabric": {
        "AdminUsername": "MyAdminUser",
        "AdminPassword": "Password123"
      }
    },
    "LogPublishingConfiguration": {
      "Fabric": {
        "CaLogs": {
          "Cloudwatch": {
            "Enabled": true
          }
        }
      }
    }
  }
}
'
```
output
```
{
    "NetworkId": "n-NH2MMRSQ7BDXTB3UE4UU5VET7E",
    "MemberId": "m-K2V7RZYTQZFDVDZDKWL2DOWAOA"
}
```

member
```
aws managedblockchain create-node \
--node-configuration '{"InstanceType":"bc.t3.small","AvailabilityZone":"ap-southeast-1a"}' \
--network-id n-NH2MMRSQ7BDXTB3UE4UU5VET7E \
--member-id m-K2V7RZYTQZFDVDZDKWL2DOWAOA
```
output
```
{
    "NodeId": "nd-FT7ZJXU4Z5BP5PM34FIRVVEFDQ"
}
```