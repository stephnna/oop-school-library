def start
  @reply = gets.chomp.to_i
  case @reply
  when 1
    @app.list_books
  when 2
    @app.list_people
  when 3
    @app.create_person
  when 4
    @app.start_book
  when 5
    @app.start_rental
  when 6
    @app.list_rentals
  when 7
    puts 'Thank you for using this app!'
  else
    puts 'That is not a valid option.'
  end
end
