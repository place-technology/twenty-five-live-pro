module TwentyFiveLivePro
  class Session
    Log = ::Log.for(self)

    @client : Halite::Client = Halite::Client.new

    def initialize(@base_url : String, @username : String, @password : String)
    end

    def request(method : String, url : String, **kwargs) : Halite::Response
      absolute_url = Path.new(@base_url).join(url).to_s

      @client.headers({"Authorization" => ["Basic", Base64.strict_encode("#{@username}:#{@password}")].join(" ")})
      @client.headers({"User-Agent" => ["TwentyFiveLivePro", Constants::VERSION].join(" ")})
      @client.headers({"Content-Type" => "application/json"})
      @client.timeout Constants::DEFAULT_SINGLE_REQUEST_TIMEOUT

      Log.debug { "Requesting an URL..." }
      Log.debug { "Request method: #{method}" }
      Log.debug { "Request URL: #{url}" }
      Log.debug { "Request keyword arguments: #{kwargs}" }

      case method
      when "GET"
        response = @client.get absolute_url, **kwargs
      when "POST"
        response = @client.post absolute_url, **kwargs
      when "PUT"
        response = @client.put absolute_url, **kwargs
      when "DELETE"
        response = @client.delete absolute_url, **kwargs
      else
        raise Exception.new("The request-method type is invalid.")
      end

      Log.debug { "Request response status code: #{response.status_code}" }
      Log.debug { "Request response body: #{response.body}" }

      raise Exception.new(Constants::STATUS_CODES[response.status_code]) if (300..599).includes?(response.status_code)

      response
    end

    def get(url : String, **kwargs) : Halite::Response
      request("GET", url, **kwargs)
    end

    def post(url : String, **kwargs) : Halite::Response
      request("POST", url, **kwargs)
    end

    def put(url : String, **kwargs) : Halite::Response
      request("PUT", url, **kwargs)
    end

    def delete(url : String, **kwargs) : Halite::Response
      request("DELETE", url, **kwargs)
    end
  end
end
