module MarsRoverApp
  N = "north"
  E = "east"
  S = "south"
  W = "west"

  DIRECTION_CLOCKWISE= { 0 => N, 1 => E, 2 => S, 3 => W }
  DIRECTION_ANTI_CLOCKWISE = { 0 => N, 1 => W, 2 => S, 3 => E }
  MOVEMENT_HORIZONTAL = { E => 1, W => -1}
  MOVEMENT_VERTICAL = { N => 1, S => -1}
  
  class Parser
    def initialize(input, x_cordinate, y_cordinate, direction)
      @input = input
      @x_cordinate = x_cordinate
      @y_cordinate = y_cordinate
      @direction = direction
    end

    def parse
      i = 0
      while i < @input.length
        anti_clockwise_rotation = (DIRECTION_ANTI_CLOCKWISE.key(@direction) + 1) % 4
        clockwise_rotation = (DIRECTION_CLOCKWISE.key(@direction) + 1) % 4
        case @input[i]
        when "l"
          @direction = DIRECTION_ANTI_CLOCKWISE[anti_clockwise_rotation]

        when "r"
          @direction = DIRECTION_ANTI_CLOCKWISE[clockwise_rotation]
        
        when "m"
          if MOVEMENT_VERTICAL.include?(@direction)
            @y_cordinate += MOVEMENT_VERTICAL[@direction]
          else
            @y_cordinate += MOVEMENT_HORIZONTAL[@direction]
          end
        end

        i += 1
      end

      {:x_cordinate => @x_cordinate, :y_cordinate => @y_cordinate, :direction => @direction}
    end
  end
end