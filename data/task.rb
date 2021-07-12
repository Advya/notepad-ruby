require 'date'

class Task < Post
    def initialize
        super
        @due_date = Time.now
    end
    def read_from_console
        puts "Что надо сделать?"
        @text = gets.chomp
        puts "На когда? (дд.мм.гггг)"
        input = gets.chomp
        @due_date = Date.parse(input)
    end
    def to_strings
        
    end
end