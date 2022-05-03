#!/bin/bash
service mysql start
mysql < /setup.sql
service mysql stop
mysqld_safe