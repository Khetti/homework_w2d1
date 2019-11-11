require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../student")

class TestStudent < MiniTest::Test

  def test_can_create_student_object
    new_student = Student.new("Greg", "G16")
    # assert_equal('Greg', new_student.name)
    # assert_equal('G16', new_student.cohort)
  end

  def test_student_name
    new_student = Student.new("Greg", "G16")
    assert_equal("Greg", new_student.name)
  end

  def test_student_cohort
    new_student = Student.new("Greg", "G16")
    assert_equal("G16", new_student.cohort)
  end

  def test_set_student_name
    new_student = Student.new("Greg", "G16")
    new_student.set_student_name("Alan")
    assert_equal("Alan", new_student.name)
  end

  def test_set_student_cohort
    new_student = Student.new("Greg", "G16")
    new_student.set_student_cohort("G17")
    assert_equal("G17", new_student.cohort)
  end

  def test_student_talking
    new_student = Student.new("Greg", "G16")
    new_student.student_talking
    assert_equal("I can talk!", new_student.student_talking)
  end

  def test_favourite_language
    new_student = Student.new("Greg", "G16")
    new_student.favourite_language
    assert_equal("I love Ruby", new_student.favourite_language)
  end

end
