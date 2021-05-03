Gem::Specification.new do |s|
  s.name = 'binancewrapper21'
  s.version = '0.1.0'
  s.summary = 'Experimental Binance wrapper with the intention of trading ' +
      'coins using the API'
  s.authors = ['James Robertson']
  s.files = Dir['lib/binancewrapper21.rb']
  s.add_runtime_dependency('binance', '~> 1.2', '>=1.2.0')  
  s.add_runtime_dependency('dynarex-password', '~> 0.2', '>=0.2.0')  
  s.signing_key = '../privatekeys/binancewrapper21.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'digital.robertson@gmail.com'
  s.homepage = 'https://github.com/jrobertson/binancewrapper21'
end
