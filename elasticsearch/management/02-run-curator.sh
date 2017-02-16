#!/bin/sh
cd /elastic/elasticsearch/management/
/usr/bin/curator -f config/curator.yml config/actions/delete_indices_by_date.yml
