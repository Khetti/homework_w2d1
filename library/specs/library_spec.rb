require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../library")

class TestLibrary < MiniTest::Test

# checking that the getter for our books data works
# terminal claims get_books is an undefined method despite getter method
# unsure how to proceed
  def test_get_books(books)
    books = get_books
    p books
  end

end
