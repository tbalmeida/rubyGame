class Puzzle
  attr_accessor :floor, :top
  SIGNAL = ["+", "-"]

  def initialize(floor, top)
    self.floor = floor
    self.top = top
  end 

  def new_puzzle
    expr = ""
    expr << rand(self.floor..self.top).to_s
    expr << (SIGNAL[rand(0..1)]).to_s
    expr << (rand(self.floor..self.top)).to_s
    puts expr, eval(expr)
    puts "What does #{expr} equal?"
  
  end

end

pz = Puzzle.new(1, 20)
pz.new_puzzle