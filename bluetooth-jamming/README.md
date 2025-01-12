# BLUETOOTH JAMMER

This is a script that allows you to search for unpaired Bluetooth devices and attack them by sending poisoned PING packets causing a denial of service.
It attacks all the devices it finds. It is not selective.

## Dependencies

- hcitool
- hciconfig
- l2ping

## How to use it

```bash
sudo chmod +x bkluetooth-jammer.sh
sudo bash bluetooth-jammer.sh -i hci0
```
