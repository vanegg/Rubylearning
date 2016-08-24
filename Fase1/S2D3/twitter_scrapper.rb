require 'nokogiri'
require 'open-uri'

class TwitterScrapper
  def initialize(url)
    @url = url
    @time = []
    @tweet = []
    @retweet = []
    @fav = []  

    @doc = Nokogiri::HTML(File.open(@url))
    extract_username
    extract_stats
    extract_tweets
    report  
  end
  def extract_username
    @profile_name = @doc.search(".ProfileHeaderCard-name > a").first.inner_text
  end

  def extract_tweets
    @tweets = @doc.search(".tweet")
    for n in 0...(@tweets.length.to_i - 1)
    @time << @tweets[n].search("._timestamp").inner_text
    @tweet << @tweets[n].search(".js-tweet-text-container > p").inner_text
    @retweet << @tweets[n].search(".ProfileTweet-actionCountForPresentation").first.inner_text
    @fav << @tweets[n].search(".ProfileTweet-actionCountForPresentation").last.inner_text
    end
  end

  def extract_stats
    @num_tweets = @doc.search(".ProfileNav-value").first.inner_text    
    @following = @doc.search(".ProfileNav-value")[1].inner_text
    @followers = @doc.search(".ProfileNav-value")[2].inner_text
    @likes = @doc.search(".ProfileNav-value")[3].inner_text
  end

  def report
    puts "Username: #{@profile_name}"
    puts "----------------------------------------------------------------------------"
    puts "Stats: Tweets: #{@num_tweets}, Siguiendo: #{@following}, Seguidores: #{@followers}, Favoritos: #{@likes}"
    puts "----------------------------------------------------------------------------"
    puts "Tweets:"
    for n in 0...(@tweets.length.to_i - 1)
    puts "#{@time[n]}: #{@tweet[n]}"
    puts "Retweets:#{@retweet[n]}, Favorites: #{@fav[n]}"
    puts 
    end
  end

end

url = ARGV[0].inspect.gsub('"','')
html_file = open(url)
#puts html_file.read
twitter = TwitterScrapper.new(html_file)

