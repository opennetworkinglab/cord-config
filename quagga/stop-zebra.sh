#!/bin/bash

kill `cat /tmp/z.pid`
rm -rf /tmp/z.pid /tmp/z.sock
