---
layout: post
title: Building GNU Emacs with pure GTK and native compilation
tags: [emacs]
---

The idea of a pure GTK implementation of GNU Emacs was introduced, as far as I
am aware, in [this
thread](https://lists.gnu.org/archive/html/emacs-devel/2016-10/msg00956.html) in
the Emacs mail list. After a long time I found out a fork at
[masm11/emacs](https://github.com/masm11/emacs), which brings proper GTK support
and a separate fork at [fejfighter/emacs](https://github.com/fejfighter/emacs)
which can be rebased upstream, making possible a rebase onto the `native-comp`
branch. 

One of the benefits of a pure GTK implementation is support for the
Wayland protocol and the ability to use fractional scaling in GNOME without
blurring.

<!-- more -->

## Dependencies

Dependencies can be installed via

```
sudo dnf buildep emacs
sudo dnf install jansson-devel mpfr-devel libmpc-devel gmp-devel libgccjit-devel
```

`jansson` is required for the new native JSON parser introduced in Emacs 27, and
the rest of the developer packages are for native-comp.

## Building

To build just clone the `pgtk-native-comp` branch of [fejfighter/emacs](https://github.com/fejfighter/emacs),
and build as usual. The following flags are the ones used to build the Fedora
[build](https://src.fedoraproject.org/rpms/emacs) of Emacs, plus the ones for
native compilation and pure GTK support.

```sh
git clone -b pgtk-nativecomp https://github.com/fejfighter/emacs
cd emacs
./autogen.sh
./configure --with-dbus --with-gif --with-jpeg --with-png --with-rsvg \
           --with-tiff --with-xft --with-xpm --with-gpm=no \
           --with-xwidgets --with-modules --with-native-comp --with-pgtk
make -j6
sudo make install
```

Note that the flag `--with-jansson` is not required anymore.

## Configuration

To compile `elc` files as needed, in a deferred/async manner, add to your `init.el` the following.

```lisp
(when (fboundp 'native-compile-async)
  (setq comp-deferred-compilation t
        comp-deferred-compilation-black-list '("/mu4e.*\\.el$")))
```
The default configuration uses at most half of the cores for asynchronous
compilation, this can be configured with the `comp-async-jobs-number` variable.

If you are not using an English keyboard, you might have issues with ligatures
and symbols like `^`, to fix this add 

```lisp
(when (eq window-system 'pgtk)
  (pgtk-use-im-context t))
```

to your `init.el`. Now Emacs will just build whatever `elc` file it loads
asynchronously, this might take a while one the first run but at least it is
done asynchronously and won't interrupt your session. You can find some
benchmarks at [gccemacs](https://akrl.sdf.org/gccemacs.html).

**Note**: Doom emacs user do not need to defer compilation, `doom sync` and
`doom build` take care of building `eln` files.

## Dealing with system-wide packages

Some packages like for example `mu4e` are located in `/usr` and need root
permissions to be compiled, for them you can
run 

```
sudo emacs -Q -batch -L . -f batch-native-compile *.el
```

on their respective folders to get natively compiled binaries.

## In repositories

There are many builds and guides for testing, either nativecomp or pgtk, readily available for some GNU+Linux distributions

* copr: [wef/emacs-pgtk]
* nix: [gist](https://gist.github.com/mjlbach/179cf58e1b6f5afcb9a99d4aaf54f549)
* Arch: [emacs-native-comp-git](https://aur.archlinux.org/packages/emacs-native-comp-git/)
* Flatpak: [fejfighter/pgtk-emacs-flatpak](https://github.com/fejfighter/pgtk-emacs-flatpak)
* guix: [flatwhatson/guix-channel](https://github.com/flatwhatson/guix-channel)

## References

- [Emacs native-comp on CentOS 7](https://ddavis.io/posts/emacs-native-centos7/)

[wef/emacs-pgtk]: https://copr.fedorainfracloud.org/coprs/wef/emacs-pgtk/
