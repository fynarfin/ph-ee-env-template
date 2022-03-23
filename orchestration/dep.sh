#!/bin/bash


HOST=http://localhost:3306/zeebe/upload
rq(){
  cmd="curl --location --request POST $HOST \
  --header 'Platform-TenantId: ibank-india' \
  --form 'file=@"$PWD/$1"'"
  echo $cmd
}

LOC=feel/*.bpmn
for f in $LOC; do
  rq $f
done
