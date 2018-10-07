Gem::Specification.new do |s|
  s.name = 'myfirmata-plugin-led'
  s.version = '0.2.1'
  s.summary = 'A MyFirmata plugin to control 1 or more LEDs via a SimplePubSub subscription.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/myfirmata-plugin-led.rb']
  s.add_runtime_dependency('pinx', '~> 0.1', '>=0.1.0')
  s.signing_key = '../privatekeys/myfirmata-plugin-led.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/myfirmata-plugin-led'
end
