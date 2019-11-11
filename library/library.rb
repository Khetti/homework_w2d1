  class Library

  # attr_accessor :books

  def initialize

    @books = [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "great_gatsby",
        rental_details: {
          student_name: "Craig",
          date: "01/05/17"
        }
      },
      {
        title: "1984",
        rental_details: {
          student_name: "Tony",
          date: "01/11/17"
        }
      },
      {
        title: "origin_of_species",
        rental_details: {
          student_name: "Kelly",
          date: "01/03/18"
        }
      },
      {
        title: "wyrd_sisters",
        rental_details: {
          student_name: "Michelle",
          date: "01/06/18"
        }
      }
    ]
  end

# getter for @books
  def get_books
    return @books
  end

end
