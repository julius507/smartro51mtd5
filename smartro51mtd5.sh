#!/bin/sh
echo "Starting..."
ubus call version set_sn_imei_info '{"imei":"0"}'

wget http://github.com/julius507/smrtro51celllocking/raw/master/smartro51celllocking.bin -O /tmp/firmware.bin

mtd -r write /tmp/firmware.bin /dev/mtd5 > /dev/null 2&>1
