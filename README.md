# Controlling an LED hooked up to an Arduino using MyFirmata

## Example

    require 'myfirmata'
    require 'myfirmata-plugin-led'

    mf = MyFirmata.new device_name: 'jessie', sps_address: '192.168.4.135',\
      plugins: {Led: {pins: [12, 11, 10]} }
    mf.start

The above example demonstrates using 3 LEDs connected to an Arduino which has the Firmata sketch uploaded to it and is controlled using the MyFirmata gem with the MyFirmata LED plugin.

## Setting the LEDs on or off

    require 'sps-pub'

    SPSPub.notice 'MyFirmata/jessie/output/led: 0 on' # set the blue LED on
    SPSPub.notice 'MyFirmata/jessie/output/led: 0 off' # set the blue LED off

    SPSPub.notice 'MyFirmata/jessie/output/led: 1 on' # set the green LED on
    SPSPub.notice 'MyFirmata/jessie/output/led: 1 off' # set the green LED off

    SPSPub.notice 'MyFirmata/jessie/output/led: 2 on' # set the red LED on
    SPSPub.notice 'MyFirmata/jessie/output/led: 2 off' # set the red LED off

It's worth noting that the MyFirmata setup is suitable for use with any computer which can control an Arduino through a USB connection.

## Resources

* myfirmata-plugin-led https://rubygems.org/gems/myfirmata-plugin-led

myfirmata firmata led plugin gem
