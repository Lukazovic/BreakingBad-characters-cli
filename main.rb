require 'rest-client'
require 'json'

require './helpers/base_url.rb'
require './helpers/print_options.rb'

require './models/Character.rb'

require './services/GetallCharactersService.rb'
require './services/GetCharacterByIdService.rb'
require './services/GetCharacterByNameService.rb'
require './services/GetRandomCharacterService.rb'

require './controllers/MainController.rb'

MainController.new.init