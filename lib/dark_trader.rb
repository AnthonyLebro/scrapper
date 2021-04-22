require 'nokogiri'
require 'rubocop'
require 'rspec'
require 'open.uri'


Page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/")) 

def array_crypto_name(page)
    array_name = page.xpath('//tbody/tr/td[3]//*[@class=""]').map{|name|name.text}
end


def array_crypto_value(page)
    array_value = page.xpath('//tbody/tr/td[5]//*[@class=""]').map{|item|item.text.tr('$','')}
end


def array_hash(array_name, array_value)
    new_array=[]
    array_name.size.times do |i|
      hash=Hash[array_name[i],array_value[i]]
      new_array<<hash
    end

    puts new_array.inspect

end
    
def perform(page)
      array_name = array_crypto_name(page)
      array_value = array_crypto_value(page)
      array_hash(array_name, array_value)
end
