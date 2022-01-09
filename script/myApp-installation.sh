#!/bin/bash

aws configure set aws_access_key_id <%=node["consul-mysql-npm"]["attr1"]["access_key"] %>

aws configure set aws_secret_access_key <%=node["consul-mysql-npm"]["attr1"]["secret_key"] %>

aws configure set default.region eu-west-3

aws s3 cp s3://workshop-tf-state-nirg/ChuckNorrisAPP/  /home/ubuntu/ChuckNorrisAPP --recursive

cd /home/ubuntu/ChuckNorrisAPP

sudo flask run --host=0.0.0.0 --port=5000
       
