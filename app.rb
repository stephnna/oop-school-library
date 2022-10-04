require_relative './student'
require_relative './teacher'
require_relative './rental'
require_relative './module'

class App
  def initialize
    @people = []
    @books = []
    @rentals = []
  end
  include OtherFunctions

  def create_person
    selection =
      take_input_label(
        'Do you want to create a student (1) or a teacher (2)? [Input the number]'
      )
    selection = selection.to_i
    case selection
    when 1
      student
    when 2
      teacher
    else
      put_lable('Invalid option')
    end
  end

  def student
    age = take_input_label('Age')
    age = age.to_i
    name = take_input_label('Name')
    parent_permit = parent_permission
    create_student(age, name, parent_permit)
  end

  def teacher
    age = take_input_label('Age')
    age = age.to_i
    name = take_input_label('Name')
    specialization = take_input_label('specialization')
    create_teacher(age, name, specialization)
  end

  def list_people
    @people.each do |person|
      puts "[#{person.class}] Name: #{person.name}, ID: #{person.id} Age: #{person.age}"
    end
  end

  def start_book
    put_lable('Please enter the title of the book')
    title = take_input_label('Title')
    author = take_input_label('Author')
    create_book(title, author)
  end

  def list_books
    @books.each_with_index do |book, index|
      puts "(#{index}) Title: #{book.title}, Author: #{book.author}"
    end
  end

  def list_rentals
    id = take_input_label('Enter id of person')
    @rentals.each do |rental|
      put_lable('Rentals')
      rental.person.id && id
      put_lable("#{rental.date} - #{rental.book.title}")
    end
  end

  def start_rental
    put_lable('Please enter the number of the person renting the book not id')
    @people.each_with_index do |person, index|
      puts "#{index}) Name: #{person.name}, ID: #{person.id} Age: #{person.age}"
    end
    person_id = take_input_label('Person id')
    person_id = person_id.to_i
    person = @people[person_id]
    put_lable('Please enter the number of the book being rented')
    list_books
    book_id = take_input_label('Book id')
    book_id = book_id.to_i
    book = @books[book_id]
    date = take_input_label('Date')
    create_rental(date, person, book)
  end
end
