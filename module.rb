module OtherFunctions
  def take_input_label(label)
    print "#{label}: "
    gets.chomp
  end

  def put_lable(label)
    puts label.to_s
  end

  def parent_permission
    put_lable('Has parent permission? [Y/N]')
    parent_permission = gets.chomp.downcase
    case parent_permission
    when 'y'
      parent_permission = true
    when 'n'
      parent_permission = false
    else
      puts 'Invalid input'
    end
    parent_permission
  end

  def create_student(age, name, parent_permission)
    @people << Student.new(age, name, parent_permission)
    put_lable('Person created successfully')
  end

  def create_teacher(age, name, specialization)
    @people << Teacher.new(age, name, specialization)
    put_lable('Person created successfully')
  end

  def create_book(title, author)
    @books << Book.new(title, author)
    put_lable('Book created successfully')
  end

  def create_rental(date, person, book)
    put_lable('Rental created successfully')
    Rental.new(person, book, date)
  end
end
