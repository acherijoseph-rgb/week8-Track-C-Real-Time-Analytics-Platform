#!/bin/bash
pg_dump -Fc -f backups/capstone_$(date +%F).dump capstone
