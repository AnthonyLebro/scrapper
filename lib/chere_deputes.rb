require 'nokogiri' 
require 'open-uri'
require 'rubocop'
require 'rspec'


page = Nokogiri::HTML(URI.open("https://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))   

def get_depute_name(page)
    array_name = page.xpath('//*[@id="deputes-list"]/div/ul/li/a')
end

def get_depute_first_name (array_name)
        array_first_name =[]
        array_name.each do |name|
        new_array = name.split
        array_fisrt_name += new_array[1]
    end
end


def get_depute_last_name (array_name)
        array_last_name =[]
        array_name.each do |name|
        new_array = name.split
        array_last_name += new_array[2..name.size.join("")]
        return puts array_last_name
    end 
end

def get_mail_url (page)
    page.xpath('').url

