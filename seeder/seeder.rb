require 'cgi'
pages << {
    page_type: 'products_search',
    method: 'GET',
    url: 'https://www.hemkop.se/c/Dryck/Sport-och-energidryck/Energidryck?avoidCache=1549792314334&categoryPath=Dryck%2FSport-och-energidryck%2FEnergidryck&page=0&size=12',
    vars: {
        'input_type' => 'taxonomy',
        'search_term' => '-',
        'page' => 1
    }


}

search_terms = ['Red Bull', 'RedBull', 'Energidryck', 'Energidrycker']
search_terms.each do |search_term|

  pages << {
      page_type: 'products_search',
      method: 'GET',
      url: "https://www.hemkop.se/search?avoidCache=1549793414531&page=0&q=#{CGI.escape(search_term)}&size=12",
      vars: {
          'input_type' => 'search',
          'search_term' => search_term,
          'page' => 1
      }


  }

end