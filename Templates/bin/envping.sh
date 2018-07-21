#!/bin/bash
echo ExNet: $(if $(ping -c1 -W3 8.8.8.8 >/dev/null); then echo UP; else echo DOWN; fi)
for host in {tmpl,ctrl,blk,obj{1,2},comp}.centos.rdo; do echo $host: $(if $(ping -c1 -W3 $host >/dev/null); then echo UP; else echo DOWN; fi); done
for ip in 192.168.124.{5,10,20,5{0,1},100}; do echo $ip: $(if $(ping -c1 -W3 $ip >/dev/null); then echo UP; else echo DOWN; fi); done
