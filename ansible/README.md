# Goldie Ansible automation

Playbooks and Tasks are tag based.

Role: Common

Task: Get OS Release version

ansible-playbook -i inventory nodes.yml -l <nodename> --tags=Common_CheckOSVersion
