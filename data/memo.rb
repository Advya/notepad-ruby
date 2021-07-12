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

    end

end