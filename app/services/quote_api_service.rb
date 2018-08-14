
require 'open-uri'
class QuoteApiService
    URL = "http://quotes.toscrape.com"
    
    def self.parser_html(tag)
        html = Nokogiri::HTML(open(URL))
        # Pegando os quotes da pagina
        quotes = []
        html.css('.quote').each do |item| 
            tags = item.css('.tags > a')
            
            # Criando um array de tags, a partir do atributo text voltado do parser.
            tags = tags.map(&:text)
            
            if tags.include?(tag.downcase)
                Tag.find_or_create_by(tag: tag)
                quote = item.css('.text').text
                author = item.css('.author').text
                by = URL +  item.css('span > a').first.values[0]
                q = Quote.find_or_create_by(quote: quote, author:author, author_about:by, tags:tags)
                quotes.push(q)
            end
            
        end
        return quotes
    end

    def self.get_quotes(tag)
        tags = Tag.where(tag:tag)
        return tags.count > 0 ? get_quotes_cached(tag) : parser_html(tag)
    end

    def self.get_quotes_cached(tag)
        quotes =  Quote.in(tags: [tag])
        return quotes
    end

end