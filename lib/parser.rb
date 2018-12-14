require 'json'
require 'pry'
class Parser

  def self.items(file)
    contents = File.read(file)
    parsed_items = JSON.parse(contents)["items"]["item"]
    parsed_items.each do |item_data|
      binding.pry
      Item.create(item_data)
    end
  end

end
