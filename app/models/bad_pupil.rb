class BadPupil < Pupil
  belongs_to :pupil

  def name
    "Byaka " + @first_name
  end
end
