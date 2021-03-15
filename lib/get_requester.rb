require 'pry'
require 'open-uri'
require 'net/http'
require 'json'

class GetRequester

    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(@url)
        resp = Net::HTTP.get_response(uri)
        resp.body
    end

    def parse_json
        JSON.parse(get_response_body)
    end


end