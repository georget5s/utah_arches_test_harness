#!/bin/bash
. /etc/os-release

cat>/etc/yum.repos.d/arches.repo<<EOF
[utah_arches]
name=Utah Arches Repository
baseurl=https://www.utahproject.org/static/rpm_repo/$ID/\$releasever/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://www.utahproject.org/static/rpm_repo/gpg_key.txt
EOF
