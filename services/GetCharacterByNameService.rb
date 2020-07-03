class GetCharacterByNameService
  def run
    print "\nName = "
    character_name = gets.chomp.to_s.strip

    # isInvalidName = /\s{2,}/.match?(character_name)
    formatted_name = character_name.gsub " ", "+"

    response = RestClient.get "#{base_url}/api/characters?name=#{formatted_name}"
    response_formatted = JSON.parse(response.body)
    
    characters_info = response_formatted
    characters_info.each do |character_info|
      puts 
      character = Character.new(character_info)
      character.print_informations
    end
  end
end