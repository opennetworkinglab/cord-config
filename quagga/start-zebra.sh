#!/bin/bash
export LD_LIBRARY_PATH=/usr/local/lib

/usr/local/sbin/zebra -f /usr/local/etc/zebra.conf -z /tmp/z.sock -i /tmp/z.pid -d -u root -g root
