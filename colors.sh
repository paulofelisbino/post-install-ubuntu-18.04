#!/bin/bash

blue_text(){
  echo "`tput setaf 4`$@`tput sgr0`"
}

yellow_text(){
  echo "`tput setaf 3`$@`tput sgr0`"
}

red_text(){
  echo "`tput setaf 1`$@`tput sgr0`"
}

green_text(){
  echo "`tput setaf 2`$@`tput sgr0`"
}