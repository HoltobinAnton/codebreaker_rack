require 'yaml'
class ServiceIO
  PATH = "#{File.dirname(__FILE__)}/data/save_game.yaml".freeze

  def self.save_game(str)
    File.open(PATH, 'a') do |file|
      file.write(str)
    end
  end

  def self.load_games
    file = File.open(PATH, 'r')
    file.nil? ? 'Error connecting to database' : file.read
  end
end
