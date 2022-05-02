require 'digest'

puts "Введите слово или фразу для шифрования"
input_phrase = gets.to_s
puts "Каким способом зашифровать?"
puts "1.MD5"
puts "2.SHA1"
#choice and operations
method_choice = gets.chomp
puts "Вот что получилось:"

if method_choice == 1
  puts Digest::MD5.hexdigest input_phrase
else
  puts Digest::SHA1.hexdigest input_phrase
end