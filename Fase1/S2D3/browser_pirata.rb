require 'nokogiri'
require 'net/http'
require 'open-uri'

class Page
  def initialize(url)
    @url = url
  end

  def fetch!
    @res = Net::HTTP.get_response(URI(@url))
    @res1 = Net::HTTP.get(URI(@url))
    html_file = open(@url)
    @doc = Nokogiri::HTML(File.open(html_file))
    @doc = Nokogiri::HTML(@res1) #o @res.body en el argumento
  end

  def links
    @links = @doc.css(".nav-item > a") #para otras paginas "li > a "
    array = []
    (@links.length - 1).times do |n|
      temp = []
      temp << @links[n].inner_text
      temp << @links[n]["href"]
      array << temp
    end
    array
  end

  def title
    @title = @doc.search("head > title").inner_text
  end
end

class Browser
  def run!
    repeat = false
    loop do
      if repeat == false
        print "Hola, indica la URL (o escribe 'S' para salir): "
        @url = gets.chomp
        @url_original = @url
      end
      p "Hasta luego" if @url.downcase == 's'
    break if @url.downcase == 's'
      @page = Page.new(@url)
      @page.fetch!
      report
      repeat = false
      print "Indica un link (o escribe 100 para ingresar una nueva url): "
      @n_link = gets.chomp
       if @n_link.to_i <= @page.links.length
        @url = @url_original + @page.links[@n_link.to_i - 1][1].sub("/","")
        repeat = true
      end
    end
  end

  def report
    puts "url> #{@url}"
    puts "Fetching..."
    puts "Título: #{@page.title}"
    puts "Links:"
    @page.links.each do |link|
      puts "#{link[0]}: #{link[1]}"
    end
  end
end

Browser.new.run!
