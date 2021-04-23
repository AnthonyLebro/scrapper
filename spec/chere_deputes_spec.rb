require 'rubocop'
require 'pry'
require_relative '../lib/cher_depute'

describe "the get_depute_first_name method" do 
  it "return a first name" do
    expect(get_depute_first_name(["peio bernard julien"])).to eq(["bernard"])
  end
end

describe "the array_hash_depute method" do 
  it "return array/hash with first name last name & email" do
    expect(array_hash_depute(["antho@gmail.eu"], ["antho"], ["charr"])).to eq([{"first_name" => "Antho", "last_name" => "Charr", "email"=> "Antho@gmail.eu"}])
  end
end