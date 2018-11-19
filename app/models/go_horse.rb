class GoHorse

  def is_letter?(symbol)
    return true if symbol >= 'A' && symbol <= 'H'
  end

  def is_digit?(symbol)
    return true if symbol >= '1' && symbol <= '8'
  end

  def is_valid_format?(str)
    if str.length == 5 && str[2] == '-' &&
        is_letter?(str[0]) && is_digit?(str[1]) &&
        is_letter?(str[3]) && is_digit?(str[4])
      true
    else
      false
    end
  end

  def is_knight_move?(str)
    return 'Input string format is invalid' if is_valid_format?(str) == false

    delta_x = ((str[0]).ord - (str[3]).ord).abs
    delta_y = ((str[1]).ord - (str[4]).ord).abs


    if delta_x == 1 && delta_y == 2 ||
        delta_x == 2 && delta_y == 1
      true
    else
      false
    end
  end
end

# var = GoHorse.new
# var.is_knight_move?('B1-C3') // true
# var.is_knight_move?('B1-A3') // true
# var.is_knight_move?('G1-G3') // false
# var.is_knight_move?('H1-I3') // Input string format is invalid

# Task: given a line with a chess move code, for example, "E2-E4".
# It is necessary to determine whether the given code is a knight's move.