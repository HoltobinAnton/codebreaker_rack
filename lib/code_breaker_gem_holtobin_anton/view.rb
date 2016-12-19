module CodeBreakerGemHoltobinAnton
  module View
    def start_mess
      puts 'Hello, let is start playing'
      puts 'You can enter a "Hint" to display a random number'
      puts 'You can enter a "Exit" to exit the game'
    end

    def hint_mess(num)
      puts "Your tip is #{num}"
    end

    def end_game_mess(options = {}, str = '', name = '')
      "#{name} choice did #{options[:ch_did]} out of #{options[:ch_size]}." \
        "Hint used = #{options[:ht_size]} #{str}\n"
    end

    def restart_game_mess?
      print 'Do you want to start the game again? (Yes/No) '
      gets.chomp.capitalize == 'Yes' ? true : false
    end

    def attempts_ended
      puts 'You have no more moves!'
    end

    def user_code_gets
      gets.chomp.capitalize
    end

    def user_code_print
      print 'Please enter : '
    end

    def print_marking
      puts @result
    end
  end
end
