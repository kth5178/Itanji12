class Drink
  attr_reader :name, :price

 def initialize price, name
    @name = name
    @price = price

  end
  def self.cola
    self.new 120, :cola
  end

  def self.redbull
    self.new 200, :redbull
  end

  def self.water
    self.new 100, :water
  end

class VendingMachine
  AVAILABLE_MONEY = [10, 50, 100, 500, 1000]

  attr_reader :total, :sale_amount

  def initialize
    @total = 0
    @sale_amount = 0
    @drink_table = {}
    5.times { store Drink.cola }
  end

  def insert(money)
    AVAILABLE_MONEY.include?(money) ?
      nil.tap { @total += money } : money
  end

  def refund
    total.tap { @total = 0 }
  end
