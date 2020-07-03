class GetallCharactersService
  def run
    response = RestClient.get "#{base_url}/api/characters?category=Breaking+Bad"
    response_formatted = JSON.parse(response.body)

    characters_info = response_formatted
    characters_info.each do |character_info|
      puts 
      character = Character.new(character_info)
      character.print_informations
    end
  end
end