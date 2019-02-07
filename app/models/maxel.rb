class Maxel

  def get_maximum_el(sign)
    if sign >= 0
      1
    else
      0
    end
  end

  def get_element(a, b)
    sign_a_b = get_maximum_el(a - b)
    debugger
    a * sign_a_b + (1 ^ sign_a_b) * b
  end
end

# c = Maxel.new
# c.get_element(92, 18)
#
# Task: Given two integers. Write a function that returns the maximum element.