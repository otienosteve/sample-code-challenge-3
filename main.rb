# # str="This is a string"
# # p str

# #  strings are mutable 
# # assign a value to a string- new memory is allocated, 
# # strings are taxing on memory 

# # symbols deallocation/ unnecessary allocation 
# # hash/object in js/ dictionary in python
# # key, value pairs {key:value}

# # hash={
# # "key1"=>"value 1",
# # "Key2"=>"Value 2",
# # "key3"=>1,
# # "Key4"=>67.902,
# # }
# # p hash["key1"]

# # hash2={key1: "Value 1",
# # key2:"Value 2",
# # Key3:"Value 3",
# # Key4:12,
# # Key5:45.890
# # }
# # p hash2[:key2]
# # # Key2="Key2"
# # # Key3="Key3"

# # hash3={
# #     Key1:"Value 1",
# #     "Key2"=>"value 2",
# #     "Key3"=>45,
# #     key5: "Value 5"
# # }
# # p hash3["Key2"]

# # pry
# require 'pry'

# # puts "Enter your name?"

# # name=gets.chomp



# # puts "your name has #{name.length} characters"

# def My_name (name)
#      binding.pry
# p "your name is #{name}"
# end
# My_name("Steve")
# My_name("Otieno")
# My_name("Ouma")
# p "the end of pry"

# string manipulation

str="10/24/2022 Today, @is your Lucky Day?"

spc= str.scan(/da/i) # return an array of matching patterns
spc2= str.match(/da/i) # return a MatchData object for the first matching pattern
spc3= str.scan(/[^aeiou]/) # getting all non vowels
spc4=str.scan(/\s/) # all spaces
spc5=str.scan(/\S/) #any non-space-character
spc6=str.scan(/\w/) #\w all alphanumeric characters A-Z, a-z, 0-9
spc7= str.scan(/\W/) #\W all non-alphanumeric characters
spc8=str.scan(/\d/) # \d  all digit characters
spc9=str.scan(/\D/) #\D all non-digit acharacters

# spc10=str.scan(/[\W]/).grep(/\S/)
# p spc10

email="leslie2002@gmail.com"

#must start with a alphabet
#any other comibantion of characaters
#no spaces
#@
#domain- characters only or chracaters + digits
#dot
# TLD- toplevel domain- alpahabet acharacters

vld=email.scan(/(\w+)+@+(\w{1,5})+.+(\w{3,5})/)
# p vld

# p spc3
# p spc
# p spc2[0]
# p spc2[1]
#(\w{3,})@(\w{3,}).(\w{2,5})

# [A-Z]{1,}\w{3,}@\w{3,}.\w{2,5} - regex for email

# creating a class - encapsulate a unit that contains methods and variables 
# @var -inst variable

class Whiskey
  attr_accessor :origin, :name
  attr_reader :qty
  attr_writer :recipe, :qty
  @@all=[]
def initialize(qty,origin="KENYAN",name)
  @name = name
  @origin=origin
  @qty=qty
  @@all.push self 

end
# self -refers to the current instance
def changeQty
    self.qty= "1 L"
end
#class variables slef.name
def self.all
    @@all
end
end

wk= Whiskey.new "GLENFIDDICH", "KENYAN", 750 
wk2= Whiskey.new "JAMESON", "IRELAND", 750 
wk3=Whiskey.new "IMPERIAL BLUE", 750
wk3.origin="INDIA"
wk4=Whiskey.new 750, "JACK DANIELS"
p wk4
p wk3
p wk
 wk.origin="SCOTLAND"
 wk.changeQty 

 p wk

 p Whiskey.all