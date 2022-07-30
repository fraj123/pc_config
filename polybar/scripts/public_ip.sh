#!/bin/sh
public_ip=""
echo "${public_ip}  $(curl -s checkip.amazonaws.com)"
