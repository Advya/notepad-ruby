require_relative 'data/link'
require_relative 'data/memo'
require_relative 'data/task'

puts "Привет, это блокнот!"
puts "Что хотите написать?"

choices = Post.post_types

choice = -1
until choice >= 0 && choice < choices.siza
    choices.each_with_index do |type, index|
        puts "\t#{index} #{type}"
    end
    choice = gets.chomp.to_i
end

entry = Post.create(choice)
etnry.read_from_console
entry.save
puts "Done!"