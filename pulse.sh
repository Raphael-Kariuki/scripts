#!/usr/bin/env zsh

check_pulse_pidof(){
  pulse_pidof=$(pidof pulseaudio)
}
check_pulse_pidof

start_pulse(){
  if [[ $pulse_pidof == "" ]]; then
    pulseaudio --start
  fi
}
start_pulse
