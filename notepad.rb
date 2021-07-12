require_relative 'data/post.rb'
require_relative 'data/link.rb'
require_relative 'data/memo.rb'
require_relative 'data/task.rb'


puts "Привет, это блокнот!"
puts "Что хотите написать?"

choices = Post.post_types

choice = -1
until choice >= 0 && choice < choices.size
    choices.each_with_index do |type, index|
        puts "\t#{index} #{type}"
    end
    choice = gets.chomp.to_i
end

entry = Post.create(choice)
entry.read_from_console
entry.save
puts "Done!"