class Movie

  def initialize
    @movie_name
    @producer_name
  end

  def ask_producer
    puts "Write a name of producer"
    @producer_name = STDIN.gets.encode('UTF-8').chomp
  end

  def ask_movies
  	movies_arr = []
    while @movie_name != "" do
      puts "Write a next movie or write \"\" (nothing)"
      @movie_name = STDIN.gets.encode('UTF-8').chomp
      movies_arr << @movie_name
    end
    return movies_arr
  end

  def random_movie(movies_array)
    puts "Tooday you will watch: #{movies_array.sample} by producer: #{@producer_name}"
  end

end