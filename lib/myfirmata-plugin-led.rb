#!/usr/bin/env ruby

# file: myfirmata-plugin-led.rb

# a plugin for the myfirmata gem


class MyFirmataPluginLed


  def initialize(arduino, settings: {}, variables: {})
    
    @arduino = arduino
    @settings, @variables = settings, variables
    x = settings[:pins] || settings[:pin]
    
    @pins = case x
    when Fixnum
      [x]
    when Integer
      [x]      
    when String
      [x]
    when Array
      x
    end    
    
  end
  
  def on_led_message(message)

    r = message.match(/(\d+)\s*(on|off)/)

    if r then
      
      index, state = r.captures
      @arduino.digital_write @pins[index.to_i], state == 'on'
      
    end
  end  
    
  def start()
        
  end
  
  alias on_start start
    
    
end
