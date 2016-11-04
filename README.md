Stouts.docker-registry
========================

Ansible role to install and start registry

#### Variables

```yaml
registry_enabled: yes

registry_env: {}
registry_home: /opt/docker-registry
registry_image: "registry:2"

registry_listen: 127.0.0.1
registry_local_host: https://localhost:5000
registry_port: 5000
registry_ports: ["{{registry_listen}}:{{registry_port}}:5000"]

registry_net: bridge
registry_nginx: no
registry_nginx_servername: "{{inventory_hostname}}"
registry_nginx_auth: no
registry_nginx_auth_users: [] # [{name: name, password: password}]

registry_ssl: no
registry_ssl_dir: "{{registry_home}}/ssl"
registry_ssl_crt: "{{registry_ssl_dir}}/cert.pem"
registry_ssl_key: "{{registry_ssl_dir}}/key.pem"
```

#### Usage

Add `Stouts.docker-registry` to your roles and set vars in your playbook file.

Example:

```yaml

- hosts: all

  roles:
    - Stouts.docker
    - Stouts.docker-registry
```

#### License

Licensed under the MIT License. See the LICENSE file for details.

#### Feedback, bug-reports, requests, ...

Are [welcome](https://github.com/Stouts/Stouts.docker-registry/issues)!
