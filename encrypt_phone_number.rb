
# RUBY ENCRYPT PHONE NUMBER
# referred to this link for regex understanding https://medium.com/@angelospmusic/basic-regular-expressions-in-ruby-with-gsub-e6c67e501c88

def encrypt_phone_number(str)
str.gsub(/[\d](?=.{5})/, "*")
end

puts encrypt_phone_number '718-867-5309'


# my process of finding this out with pry

# from (pry):1:in `__pry__'
# [2] pry(main)> number = '718-867-5309'
# => "718-867-5309"
# [3] pry(main)> puts number.gsub(/[0-9/, "!")
# (eval):2: premature end of char-class: /[0-9/
# [3] pry(main)> puts number.gsub(/[0-9]/, "!")
# !!!-!!!-!!!!
# => nil
# [4] pry(main)> puts number.gsub(/[0..3]/, "!")
# 718-867-5!!9
# => nil
# [5] pry(main)> puts number.gsub(/[0...5]/, "!")
# 718-867-!3!9
# => nil
# [6] pry(main)> puts number.gsub(/(0..3)/, "*")
# 718-867-5309
# => nil
# [7] pry(main)> puts number.gsub(/[0]/, "*")
# 718-867-53*9
# => nil
# [8] pry(main)> puts number.gsub(/d/, "*")
# 718-867-5309
# => nil
# [9] pry(main)> puts number.gsub(/D/, "*")
# 718-867-5309
# => nil
# [10] pry(main)> puts number.gsub(/w/, "*")
# 718-867-5309
# => nil
# [11] pry(main)> puts number.gsub(/[/w]/, "*")
# (eval):2: unknown regexp option - w
# puts number.gsub(/[/w]/, "*")
#                    ^~
# (eval):2: premature end of char-class: /[/
# SyntaxError: unexpected ']', expecting ')'
# puts number.gsub(/[/w]/, "*")
#                      ^
# SyntaxError: unexpected ')', expecting end-of-input
# puts number.gsub(/[/w]/, "*")
#                             ^
# [11] pry(main)> puts number.gsub(/[\d]/, "*")
# ***-***-****
# => nil
# [12] pry(main)> puts number.gsub(/[\d].first/, "*")
# 718-867-5309
# => nil
# [13] pry(main)> puts number.first.gsub(/[\d]/, "*")
# NoMethodError: undefined method `first' for "718-867-5309":String
# from (pry):13:in `__pry__'
# [14] pry(main)> puts number.gsub(/.(?=.{4}/, "*")
# (eval):2: end pattern with unmatched parenthesis: /.(?=.{4}/
# [14] pry(main)> puts number.gsub(/.(?=.{4})/, "*")
# ********5309
# => nil
# [15] pry(main)> puts number.gsub(/.(?=.{1})/, "*")
# ***********9
# => nil
# [16] pry(main)> puts number.gsub(/.(?=.{5})/, "*")
# *******-5309
# => nil
# [17] pry(main)> puts number.gsub(/.(?=.{6})/, "*")
# ******7-5309
# [21] pry(main)> number.gsub(/[\d](?=.{5})/, "*")
# => "***-***-5309"
# I find copy pasting my terminal logs useful as to come back to this and see how my brain works, lol.