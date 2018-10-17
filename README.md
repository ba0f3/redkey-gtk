# redkey-gtk

### Dependencies
```shell
nimble install gintro
```

### Development
```shell
apt install libgtk-3-bin
```

### Deploy
```shell
sudo ln -s (pwd)/im-redkey.so /usr/lib/x86_64-linux-gnu/gtk-3.0/3.0.0/immodules/

/usr/lib/x86_64-linux-gnu/libgtk-3-0/gtk-query-immodules-3.0 --update-cache
```

### Testing
```shell
export GTK_IM_MODULE=redkey
export XMODIFIERS=@im=redkey

im-config

```