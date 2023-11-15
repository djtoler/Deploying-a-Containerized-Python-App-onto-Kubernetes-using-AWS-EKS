#!/bin/bash

#Create IAM Open ID connect (OIDC) provider for our cluster
eksctl utils associate-iam-oidc-provider --cluster cluster02 --approve
