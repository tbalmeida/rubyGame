class Player
  attr_accessor :name
  attr_reader :life
  

  def initialize(name)
    self.name = name
    @life = 3
    @alive = true
  end

  def info
    if @alive
      puts "#{self.name} has #{life} lifes left."
    else
      puts "#{self.name} has no lives left."
    end
  end

  def take_life
    # Checks if the player still have lifes to be taken, otherwise sets the alive to false
    @life -= 1 if @life > 0
    @alive = false if @life == 0
  end

end
