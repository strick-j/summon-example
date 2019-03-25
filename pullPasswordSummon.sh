#!/bin/bash

source ../utils.sh

main(){
  printf '\n-----'
  printf '\nThis script will pull a password using summon.\n'
  summon_interactive
  printf '\n-----\n'
}

summon_interactive(){
  local api=$(cat ~/.netrc | grep password | awk '{print $2}')
  local account=$(cat ~/.conjurrc | grep account | awk '{print $2}')
  local login=$(cat ~/.netrc | grep login | awk '{print $2}')

  printf "Using Conjur login name: $login\n"
  printf "Using api: $api\n"
  printf "Using account: $account"
  printf "\n"
  printf "\nGrabbing secret: $secret"
}

main

