
# RUBY ENCRYPT PHONE NUMBER
# referred to this link for regex understanding https://medium.com/@angelospmusic/basic-regular-expressions-in-ruby-with-gsub-e6c67e501c88

def encrypt_phone_number(str)
str.gsub(/[\d](?=.{5})/, "*")
#     str[0..6] = '***-***'
#     return str
end

puts encrypt_phone_number '718-867-5309'


