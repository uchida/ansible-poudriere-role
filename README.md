# uchida.poudriere

[![Ansible Role](https://img.shields.io/ansible/role/5102.svg?maxAge=2592000)](https://galaxy.ansible.com/detail#/role/5102)
![Version](https://img.shields.io/github/tag/uchida/ansible-poudriere-role.svg?maxAge=2592000)
[![License](https://img.shields.io/github/license/uchida/ansible-poudriere-role.svg?maxAge=2592000)](https://tldrlegal.com/license/creative-commons-cc0-1.0-universal)
[![Travis](https://img.shields.io/travis/uchida/ansible-poudriere-role.svg?maxAge=2592000)](https://travis-ci.org/uchida/ansible-poudriere-role)

ansible role to install poudriere, clean room package builder for FreeBSD.
In addition, this role creates default ports tree and builder jail.

## Role Variables

Available role variables are listed below, along with default values:

```yaml
poudriere_zpool: zroot
poudriere_jail: "FreeBSD:9:amd64"
poudriere_jailversion: 9.3-RELEASE
poudriere_portsmethod: portsnap
```

`poudriere_zpool` is a variable to specify zpool name, when available, poudriere use this zpool.

`poudriere_jail` and `poudriere_jailversion` are variables to specify builder jail name and its FreeBSD version.

`poudriere_portsmethod` a variable to specify how to fetch and manage poudriere ports tree, it could be one of the following values:

  - `portsnap` (default)
  - `svn`
  - `svn+http`
  - `svn+https`
  - `svn+ssh`
  - `git`
  - `none`

## Example Playbook

install poudriere with `tank` zpool.
```yaml
- hosts: servers
  roles:
  - { role: uchida.poudriere, poudriere_zpool: tank }
```

creates `9.3-RELEASE` and `10.2-RELEASE` builder.
```yaml
- hosts: servers
  roles:
  - role: uchida.poudriere
    poudriere_jail: "FreeBSD:9:amd64"
    poudriere_jailversion: 9.3-RELEASE
  - role: uchida.poudriere
    poudriere_jail: "FreeBSD:10:amd64"
    poudriere_jailversion: 10.2-RELEASE
```

creates `10.2-RELEASE` builder and `git` ports tree.
```yaml
- hosts: servers
  roles:
  - role: uchida.poudriere
    poudriere_jail: "FreeBSD:10:amd64"
    poudriere_jailversion: 10.2-RELEASE
    poudriere_portsmethod: git
```

## License

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed)

dedicated to public domain, no rights reserved.
