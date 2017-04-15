Gem::Specification.new do |s|
  s.name = 'myfirmata-plugin-led'
  s.version = '0.1.0'
  s.summary = 'myfirmata-plugin-led'
  s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb']
  s.signing_key = '../privatekeys/myfirmata-plugin-led.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/myfirmata-plugin-led'
end
