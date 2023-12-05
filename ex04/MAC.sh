#!/bin/sh

ip -brief link | awk '{print $3}'
