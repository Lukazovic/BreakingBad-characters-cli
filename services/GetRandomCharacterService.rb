class GetRandomCharacterService
  def run
    response = RestClient.get "#{base_url}/api/character/random"
    response_formatted = JSON.parse(response.body)
    
    character_info = response_formatted[0]
    character = Character.new(character_info)
    puts
    character.print_informations
  end
end