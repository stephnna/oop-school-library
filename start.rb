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
    @app.leave
    @running = false
  else
    puts 'Sorry, Invalid input... try again!'
  end
end
