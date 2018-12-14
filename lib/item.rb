require_relative "batter"
require 'pry'

class Item < Batter

  def initialize(data)
    @id = data[:id]
    @type = data[:type]
    @name = data[:name]
    @ppu = data[:ppu]
    @_batters = data[:batters][:batter]
    @_toppings = data[:toppings]
  end

  def batters
    @_batters.map do |batter_data|
      Batter.new(batter_data)
    end
  end

end
