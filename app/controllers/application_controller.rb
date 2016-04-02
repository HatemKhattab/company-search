class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def getCompanyOrgnr(company_name)
    require 'rubygems'
    require 'nokogiri'
    require 'open-uri'
    page = Nokogiri::HTML(open('http://www.allabolag.se/?what='+company_name+'&where=&s.x=0&s.y=0'))

    # To get the number of search results
    result = page.css('div#printContent.hitlistBox div.hitlistTop table tr td.hitlistResultNr')
    message = result.text
    message.each_char{ |c| message.delete!(c) if c.ord<48 or c.ord>57 }
    numberOfResult = message.to_i

    if numberOfResult > 0
      tables = page.css('div#printContent.hitlistBox div.hitlistRow table')
      table=tables[0].css('tr td.text11grey6')
      cell = table[0]
      items = cell.children
      item = items[2]
      #return orgnr if it found it
      return item.text
    else
      #if the search failed
      return nil
    end
  end

end
