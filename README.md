# ansible-poudriere-role

[![License](https://img.shields.io/github/license/uchida/ansible-poudriere-role.svg)](http://creativecommons.org/publicdomain/zero/1.0/deed)

role to install poudriere, clean room package builder for FreeBSD.
In addition, this role creates default ports tree and builder jail.

## Role Variables

Available variables are listed below, along with default values:

```yaml
  zpool_name: zroot
  jail_name: "freebsd:9:x86:64"
  base_version: 9.3-RELEASE
```

Use zfs pool named {{ zpool_name }}, when available.

## Example Playbook

```yaml
  - hosts: servers
    roles:
    - { role: uchida.poudriere, zpool: tank }
```

## License

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed)

dedicated to public domain by [contributors](https://github.com/uchida/packer-poudriere/graphs/contributors).

