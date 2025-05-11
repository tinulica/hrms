#!/usr/bin/env bash
set -e

# 1. Initialize bench
bench init frappe-bench --frappe-branch version-16 --python python3

cd frappe-bench

# 2. Get core apps
bench get-app erpnext --branch version-16 https://github.com/frappe/erpnext.git
bench get-app hrms --branch main https://github.com/your-username/hrms.git

# 3. Create a development site
bench new-site site1.local --admin-password admin --mariadb-root-password root

# 4. Install apps
bench --site site1.local install-app erpnext hrms

# 5. Start background worker & webserver
bench start &
