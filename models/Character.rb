class Character
  def initialize(character_info)
    @id = character_info["char_id"]
    @name = character_info["name"]
    @birthday = character_info["birthday"]
    @occupation = character_info["occupation"]
    @img = character_info["img"]
    @status = character_info["status"]
    @nickname = character_info["nickname"]
    @portrayed = character_info["portrayed"]
    @appearance = character_info["appearance"]
  end

  def print_informations
    puts "Character: #{@name}"
    puts "ID: #{@id}"
    puts "Birthday: #{@birthday}"
    self.print_ocuppations
    puts "Photo URL: #{@img}"
    puts "Status: #{@status}"
    puts "Nickname: #{@nickname}"
    puts "Seasons appearance: #{@appearance}"
    puts "Real name: #{@portrayed}"
  end

  private

  def print_ocuppations
    ocuppations_size = @occupation.size
    if ocuppations_size === 1
      puts "Ocuppation: #{@occupation[0]}"
    else
      print "Ocuppations:"
      @occupation.each_with_index do |occupation, index|
        print " #{occupation}"
        print "," if index != ocuppations_size - 1
        print "\n" if index == ocuppations_size - 1
      end
    end
  end
end