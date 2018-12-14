require_relative "item"
require 'json'
require 'pry'

class Parser

  def self.items(file)
    contents = File.read(file)
    parsed_items = JSON.parse(contents, symbolize_names: :true)[:items][:item]
    items = parsed_items.map do |item_data|
      item = Item.new(item_data)
    end
    items.each do |item|
      item.toppings
      item.batters
    end
  end

end
