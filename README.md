Stouts.docker-registry
========================

Ansible role to install and start registry

#### Variables

```yaml
registry_enabled: yes

registry_certs_home: ""
registry_env: {}
registry_home: /opt/docker-registry
registry_image: "registry:2"
registry_port: 5000
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
