class Person < ApplicationRecord
  attr_accessor :first_name, :second_name, :middle_name, :date_of_birth

  def initialize(fname, sname, mname, birth)
    @first_name = fname
    @second_name = sname
    @middle_name = mname
    @date_of_birth = birth
  end

  def age
    2018 - @date_of_birth
  end

  def head?
    false
  end

  def name
    @first_name + " " + @middle_name
  end
end
