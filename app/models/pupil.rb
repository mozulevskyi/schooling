class Pupil < Person
  has_many :bad_pupil

  def name
    @first_name
  end

end
