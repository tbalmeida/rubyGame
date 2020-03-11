class Puzzle
  attr_accessor :floor, :top

  # const to generate the expressions. Using only + and - to work with integers
  SIGNAL = ["+", "-"]

  def initialize(floor, top)
    self.floor = floor
    self.top = top
  end 

  #generates a new puzzle
  def generate
    expr = ""
    expr << rand(self.floor..self.top).to_s
    expr << (SIGNAL[rand(0..1)]).to_s
    expr << (rand(self.floor..self.top)).to_s
  end

  # evals a puzzle
  def right_answer?(puzzle, answer)
    eval(puzzle) == answer.to_i
  end

end
