#!/bin/bash
  
git checkout trunk
git branch -D pull_req_$1
git checkout -b pull_req_$1
git pull upstream pull/$1/head
