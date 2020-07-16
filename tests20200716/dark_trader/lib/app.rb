require 'rubygems'
require 'nokogiri'
require 'open-uri'

def crypto_price_finder
  page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
  
  crypto_name_array = page.xpath('//*[@id="__next"]/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[3]').map(&:text)
  crypto_price_array = page.xpath('//*[@id="__next"]/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[5]').map(&:text)
  
  puts h = Hash[crypto_name_array.zip crypto_price_array]
  return puts( h.map{ |crypto_name_array,crypto_price_array| "#{crypto_name_array} => #{crypto_price_array}" }.sort )
  
  
end
  
 crypto_price_finder


