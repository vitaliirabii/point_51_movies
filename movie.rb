class Movie

  def initialize
    @movie_name
    @producer_name
  end

  def ask_producer
    puts "Фильмы какого режиссера Вы хотите посмотреть?"
    @producer_name = STDIN.gets.encode('UTF-8').chomp
  end

  def ask_movies
  	movies_arr = []
    while @movie_name != "" do
      puts "Введите какой-нибудь его хороший фильм или \'\'"
      @movie_name = STDIN.gets.encode('UTF-8').chomp
      movies_arr << @movie_name
    end
    return movies_arr
  end

  def random_movie(movies_array)
    puts "И сегодня вечером рекомендую посмотреть: #{movies_array.sample} режиссера: #{@producer_name}"
  end

end
