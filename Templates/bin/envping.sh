#!/bin/bash
echo ExNet: $(if $(ping -c1 -W3 8.8.8.8 >/dev/null); then echo UP; else echo DOWN; fi)
echo -e "\nHostnames-"
for name in template controller block object{1,2} compute; do echo $name: $(if $(ping -c1 -W3 $name >/dev/null); then echo UP; else echo DOWN; fi); done
echo -e "\nFQDNs-"
for host in {tmpl,ctrl,blk,obj{1,2},comp}.centos.rdo; do echo $host: $(if $(ping -c1 -W3 $host >/dev/null); then echo UP; else echo DOWN; fi); done
echo -e "\nIPs-"
for ip in 192.168.124.{5,10,20,5{0,1},100}; do echo $ip: $(if $(ping -c1 -W3 $ip >/dev/null); then echo UP; else echo DOWN; fi); done
