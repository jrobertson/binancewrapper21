#!/usr/bin/env ruby

# file: binancewrapper21.rb
# description: Experimental Binance wrapper with the intention of 
#              trading coins using the API

require 'binance'
require 'dynarex-password'


class BinanceWrapper21

  def initialize(api_key, secret)
    @client = Binance::Client::REST.new api_key: api_key, secret_key: secret
  end

  def account_info()
    @client.account_info()
  end
end

class BinanceWrapper21Plus < BinanceWrapper21

  def initialize(reg, debug: false)

    @debug = debug
    
    key = 'hkey_apps/binance'
    e = reg.get_key(key)
    @lookup_file = e.text('lookup_file').to_s
    
    api_key = e.text('apikey').to_s
    secret_key = decipher(e.text('secret').to_s)
    
    if @debug then
      puts apikey.inspect 
    end

    super(api_key, secret_key)

  end
  
  private

  def decipher(s)
    DynarexPassword.new.reverse_lookup(s, @lookup_file)
  end

end

