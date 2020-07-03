class GetCharacterByIdService
  def run
    print "\nID = "
    character_id = gets.chomp.to_i

    response = RestClient.get "#{base_url}/api/characters/#{character_id}"
    response_formatted = JSON.parse(response.body)
    
    character_info = response_formatted[0]
    character = Character.new(character_info)
    puts
    character.print_informations
  end
end