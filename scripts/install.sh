#!/bin/sh

rm -rf /etc/caelumbroker
rm -rf /etc/init.d/caelumbroker*
rm -rf /etc/logrotate.d/caelumbroker*
rm -rf /lib/systemd/system/caelumbroker*
rm -rf /usr/bin/caelumbroker*
rm -rf /usr/lib/x86_64-linux-gnu/caelumbroker*
rm -rf /usr/sbin/caelumbroker*
rm -rf /usr/share/doc/caelumbroker*
rm -rf /usr/share/man/man1/caelumbroker*
rm -rf /usr/share/man/man5/caelumbroker*
rm -rf /usr/share/man/man7/caelumbroker*
rm -rf /usr/share/man/man8/caelumbroker*
rm -rf /var/lib/caelumbroker*
rm -rf /var/log/caelumbroker*
rm -rf /var/run/caelumbroker*

useradd -r caelumbroker

mkdir /etc/caelumbroker
chmod ugo+rwx /etc/caelumbroker/
mkdir /etc/caelumbroker/ca_certificates
chmod ugo+rwx /etc/caelumbroker/ca_certificates
mkdir /etc/caelumbroker/certs 
chmod ugo+rwx /etc/caelumbroker/certs
mkdir /etc/caelumbroker/conf.d 
chmod ugo+rwx /etc/caelumbroker/conf.d

mkdir /usr/lib/x86_64-linux-gnu/caelumbrokerplugin
chmod ugo+rwx /usr/lib/x86_64-linux-gnu/caelumbrokerplugin

mkdir /usr/share/doc/caelumbroker
chmod ugo+rwx /usr/share/doc/caelumbroker
mkdir /usr/share/doc/caelumbroker/examples
chmod ugo+rwx /usr/share/doc/caelumbroker/examples
mkdir /usr/share/doc/caelumbroker-clients
chmod ugo+rwx /usr/share/doc/caelumbroker-clients

mkdir /var/lib/caelumbroker
chmod ugo+rwx /var/lib/caelumbroker/
mkdir /var/log/caelumbroker
chmod ugo+rwx /var/log/caelumbroker/

cp -R ../etc/caelumbroker/* /etc/caelumbroker
cp -R ../etc/init.d/* /etc/init.d
cp -R ../etc/logrotate.d/* /etc/logrotate.d

cp -R ../lib/systemd/system/* /lib/systemd/system

cp -R ../usr/bin/* /usr/bin
cp -R ../usr/lib/x86_64-linux-gnu/* /usr/lib/x86_64-linux-gnu
cp -R ../usr/sbin/* /usr/sbin
cp -R ../usr/share/doc/caelumbroker /usr/share/doc/caelumbroker
cp -R ../usr/share/doc/caelumbroker-clients /usr/share/doc/caelumbroker.clients

cp -R ../usr/share/man/man1/* /usr/share/man/man1
cp -R ../usr/share/man/man5/* /usr/share/man/man5
cp -R ../usr/share/man/man7/* /usr/share/man/man7
cp -R ../usr/share/man/man8/* /usr/share/man/man8

cp -R ../var/lib/caelumbroker/* /var/lib/caelumbroker
cp -R ../var/log/caelumbroker/* /var/log/caelumbroker

cp -R ../usr/lib/x86_64-linux-gnu/caelumbrokerplugin/* /usr/lib/x86_64-linux-gnu/caelumbrokerplugin

chmod ugo+rwx /var/log/caelumbroker/caelumbroker.log

