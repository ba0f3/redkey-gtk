# redkey-gtk

### Dependencies
```
nimble install gintro
```

### Development
```shell
apt install libgtk-3-bin

### Deploy
```shell
mv im-redkey.so /usr/lib/x86_64-linux-gnu/gtk-3.0/3.0.0/immodules/
```
### Update IM caches after rebuild
```
/usr/lib/x86_64-linux-gnu/libgtk-3-0/gtk-query-immodules-3.0
```