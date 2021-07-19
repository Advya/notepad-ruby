class Memo < Post
    def read_from_console
        puts "Новая заметка(напишитн \"end\" когда закончили):"
        @text = []
        line = nil
        while line != "end" do
            line = gets.chomp
            @text << line
        end

        @text.pop # удаляем end(возможно)
    end

    def to_strings
        time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r"

        return @text.unshift(time_string)
    end
    def to_db_hash
        return super.merge(
            'text'=> @text,
            'due_date'=>@due_date.to_s
        )
    end

end