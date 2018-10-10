## Simple Desktop Display Manager

##### SDDM Configuration

```
/etc/sddm.conf
/usr/share/sddm/themes/slice
/usr/share/sddm/themes/slice/theme.conf.user
```

##### Theme (Slice)

* [sddm-slice](https://github.com/RadRussianRus/sddm-slice)

##### Infos (Patch)

```
diff -u PagePower.qml PagePower.qml_ > PagePower.qml.patch
patch PagePower.qml < PagePower.qml.patch
```

