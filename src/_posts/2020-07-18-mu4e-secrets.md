---
layout: post
title: Using libsecret to handle mu4e secrets
tags: [linux, emacs]
---

Usually people set their emacs credentials on a *possible encrypted* `.authfile`. If
your system uses the secret service for managing secrets, using it is a better
alternative.

To create the smtp secret run inside of emacs

```lisp
(secrets-create-item "default" "smtp" "PASSWORD"
           :user "USER@EMAIL.com"
           :host "UPSTREAM_IP"
           :port "UPSTREAM_PORT")
```

<!-- more -->

where `host` and `port` have to be set to your upstream provider, mine are set
for `protonmail-bridge`.

To use the recently created secret, add to your email configuration

```lisp
(autoload 'secrets-get-attribute "secrets")

(setq smtpmail-smtp-server (secrets-get-attribute "default" "smtp" :host)
        smtpmail-smtp-user (secrets-get-attribute "default" "smtp" :user)
        smtpmail-smtp-service (secrets-get-attribute "default" "smtp" :port))
```

Additionally for `mbsync` you can just add 

```sh
PassCmd "secret-tool lookup user USER@EMAIL.com"
```

to `~/.mbsyncrc` to retrieve the secret, which is cleaner than the
`.authfile.gpg` solution.

[Offlineimap][offlineimap] users can use the [keyring][keyring] package to
store their secrets, but since python2 is deprecated, in some linux distributions the
python2 version bundled with `offlineimap` won't be able to load external packages. 

## References

1. {:.publications}[Secret-Service-API][emacs-docs]

[emacs-docs]:https://www.gnu.org/software/emacs/manual/html_mono/auth.html#Secret-Service-API
[keyring]:https://keyring.readthedocs.io/en/latest/
[offlineimap]:https://www.offlineimap.org/
