## Wth

This is a recipe for installing the debian driver for the hardware network card : 

> Broadcom `BCM43228` 

## How to

* To install the Wifi Card Driver : 
```bash
cd scripts/
chmod +x ./*.sh
chmod +x ./*.sh
./install.sh


```

* To turn on the wifi : 

```bash
cd scripts/
chmod +x ./*.sh
sudo ./official.debian.recipe.sh wl
```

* To turn off the wifi : 

```bash
cd scripts/
chmod +x ./*.sh
sudo ./official.debian.recipe.sh 
```

## Configure the Wifi interface

```bash
cd scripts/
chmod +x ./*.sh
./configure.wifi.sh

```
## References

* https://wiki.debian.org/fr/wl
* https://wiki.debian.org/fr/WiFi/HowToUse