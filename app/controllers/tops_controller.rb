class TopsController < ApplicationController
    require 'uri'
    require 'net/http'
    require 'json'
    require 'rexml/document'

    USER_AGENT = "TestAppForMyPortfolio".freeze

    def index
        @pref_list = PrefCode.all.order('id')
        req_city_code = params['city']
        
        if req_city_code.present?
            uri = "https://weather.tsukumijima.net/api/forecast/city/#{req_city_code}"
            uri = URI.parse(uri)
            http = Net::HTTP.new(uri.host, uri.port)
            http.use_ssl = uri.scheme === "https"
            response = http.get(uri.path, 'User-Agent': USER_AGENT)
            @res = JSON.parse(response.body)

        end

        sleep 1
    end
end
