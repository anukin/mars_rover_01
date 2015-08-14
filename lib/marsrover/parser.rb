module MarsRoverApp
  N = "north"
  E = "east"
  
  class Parser
    def initialize(input, x_cordinate, y_cordinate, direction)
      @input = input
      @x_cordinate = x_cordinate
      @y_cordinate = y_cordinate
      @direction = direction
    end

    def parse
      {:x_cordinate => 1, :y_cordinate => 1, :direction => E }
    end
  end
end