require 'rss'
require 'date'
require 'kconv'

class Title
  def views
    url = ARGV[1]
    rss = RSS::Parser.parse(url)
    puts ''
      rss.items.collect do |scale|
        puts scale.title
      end
    puts ''
  end
end