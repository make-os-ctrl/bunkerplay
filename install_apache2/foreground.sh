#!/bin/bash

echo "installation de apache2"
service apache2 start
tail -f /var/log/apache2/error.log
