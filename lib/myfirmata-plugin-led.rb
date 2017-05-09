#!/usr/bin/env ruby

# file: myfirmata-plugin-led.rb

# a plugin for the myfirmata gem

require 'pinx'


class MyFirmataPluginLed

  class Led < PinX

    def initialize(arduino, id)
      super(id)
      @arduino = arduino
    end
    
    def set_pin(val)
      super(val)
      @arduino.digital_write @id, val
    end
        
  end
  
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

    r = message.match(/(\d+)\s*(on|off|blink)\s*([\d\.]+)?(?:\s*duration\s)?([\d\.]+)?/)

    if r then
      index, state, seconds, raw_duration = r.captures
      duration = raw_duration ? raw_duration.to_f : nil

      a = case state

        when 'on'
          [:on, duration]

        when 'off'
          [:off]

        when 'blink'
          seconds = seconds ? seconds.to_f : 0.5
          [:blink, seconds, duration: duration]
      end

      @led[index.to_i].send(*a)
    end
  end  
    
  def start()
    
    if @pins.any?  then
      @led = @pins.map{|x| Led.new @arduino, x}
    end
    
  end
  
  alias on_start start
    
    
end