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
        time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r"
        deadline = "Крайний срок: #{@due_date}"

        return [deadline, @text, time_string]
    end
end