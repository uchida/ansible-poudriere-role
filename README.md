# ansible-poudriere-role

[![License](https://img.shields.io/github/license/uchida/ansible-poudriere-role.svg)](http://creativecommons.org/publicdomain/zero/1.0/deed)

role to install poudriere, clean room package builder for FreeBSD.
In addition, this role creates default ports tree and builder jail.

## Role Variables

Available variables are listed below, along with default values:

```yaml
  poudriere_zpool: zroot
  poudriere_jail: "freebsd:9:x86:64"
  poudriere_baseversion: 9.3-RELEASE
```

Use zfs pool named {{ poudriere_zpool }}, when available.

## Example Playbook

```yaml
  - hosts: servers
    roles:
    - { role: uchida.poudriere, poudriere_zpool: tank }
```

## License

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed)

dedicated to public domain by [contributors](https://github.com/uchida/packer-poudriere/graphs/contributors).

