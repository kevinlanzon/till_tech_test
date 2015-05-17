require 'json'

module ItemList

  attr_reader :data_list

  def initialize
    file = File.read(File.dirname(__FILE__) + "/../hipstercoffee.json")
    @data_list = JSON.parse(file)
  end
end
