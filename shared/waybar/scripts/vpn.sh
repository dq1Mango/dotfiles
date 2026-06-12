#!/usr/bin/env bash

MULLVAD=false

display-output() {
  echo "hi"
}

check-mullvad() {

  status=$(mullvad status | grep "Connected")
  # echo $status

  if [[ $status == "Connected" ]]; then
    # echo "it worked"
    MULLVAD=true

  fi

}

# display-output
check-mullvad

if [[ $MULLVAD == true ]]; then
  echo "󰒄 "
else 
  echo "󰩠 "
fi

