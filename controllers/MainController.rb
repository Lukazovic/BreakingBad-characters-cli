class MainController
  def init
    loop do
      begin
        print_options
        option = gets.chomp.to_i

        case option
        when 1
          GetallCharactersService.new.run
        when 2
          GetCharacterByIdService.new.run
        when 3
          GetCharacterByNameService.new.run
        when 4
          GetRandomCharacterService.new.run
        when 0
          puts "\nExiting..."
          break
        else
          puts "\nError: invalid option. Try again!"
        end        
      rescue
        puts "\nError: Something went wrong. Try again!"
      end

      print "\nPress Enter to continue..."
      gets.chomp
      redo
    end
  end
end