class Student

  # attr_accessor :name, :cohort

# constructor, creating our student properties to draw from in future
  def initialize(student_name, student_cohort)
    @name = student_name
    @cohort = student_cohort
  end

# getter methods for @name and @cohort
  def name
    return @name
  end

  def cohort
    return @cohort
  end

# setter methods for name and cohort
  def set_student_name(new_name)
    @name = new_name
  end

  def set_student_cohort(new_cohort)
    @cohort = new_cohort
  end

  def student_talking
    return "I can talk!"
  end

  def favourite_language
    # p "Please input your favourite programming language."
    # favourite = gets.chomp
    favourite = "Ruby"
    return "I love #{favourite}"
  end

end
