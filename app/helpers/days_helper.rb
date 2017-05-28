module DaysHelper

  # Wydarzenia z Wikipedii

  def wiki_happenings
    search_data = l @day.date, format: :day_month

    client = MediawikiApi::Client.new "https://pl.wikipedia.org/w/api.php"

    foo = client.action :parse, page: search_data, section: 2, prop: 'text'

    input = foo.data["text"].to_s

    document = Nokogiri::HTML.fragment(input)

    # Tworzenie listy wydarzeń

    document.css("sup").remove
    document.css("ol").remove

    @wiki_happenings = document.xpath('ul/li[not(@id)]')

  end
end
