---
layout: post
title: Using libsecret to handle mu4e secrets
tags: [linux, emacs]
---

Usually people set their Emacs credentials on a *possible encrypted* `.authfile`. If
your system uses the secret service for managing secrets, using it is a better
alternative.

To create the SMTP secret run inside Emacs:

```lisp
(secrets-create-item "default" "smtp" "PASSWORD"
           :user "USER@EMAIL.com"
           :host "UPSTREAM_IP"
           :port "UPSTREAM_PORT")
```

<!-- more -->

where `host` and `port` correspond to your email provider.

To use the recently created secret, add to your email configuration

```lisp
(autoload 'secrets-get-attribute "secrets")

(setq smtpmail-smtp-server (secrets-get-attribute "default" "smtp" :host)
        smtpmail-smtp-user (secrets-get-attribute "default" "smtp" :user)
        smtpmail-smtp-service (secrets-get-attribute "default" "smtp" :port))
```

Additionally, for `mbsync` you can just add 

```sh
PassCmd "secret-tool lookup user USER@EMAIL.com"
```

to `~/.mbsyncrc` to retrieve the secret, which is cleaner than the
`.authfile.gpg` solution.

[Offlineimap][offlineimap] users can use the [keyring][keyring] package to
store their secrets, but since python2 is deprecated, in some Linux distributions the
`python2` version bundled with `offlineimap` won't be able to load external packages. 

## References

1. {:.publications}[Secret-Service-API][emacs-docs]

[emacs-docs]:https://www.gnu.org/software/emacs/manual/html_mono/auth.html#Secret-Service-API
[keyring]:https://keyring.readthedocs.io/en/latest/
[offlineimap]:https://www.offlineimap.org/
