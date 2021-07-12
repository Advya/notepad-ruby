class Link < Post
    def initialize
        super
        @url = ''
    end

    def read_from_console
        puts "Адрес ссылки:"
        @url = gets.chomp

        puts "Что за ссылка?"
        @text = gets.chomp
    end

    def to_strings

    end

end