require "json"
require "http/client"

class KevinKellysAdvice
  API_PATH = "api"
  def initialize
    @headers = HTTP::Headers {
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://kk-advice.koyeb.app")
    @http_client = HTTP::Client.new(uri)
  end

  def get_advice(advice_id : Int32) : JSON::Any
    JSON.parse(@http_client.get("/#{API_PATH}/advice/#{advice_id}", headers: @headers).body)
  end

  def get_random_advice() : JSON::Any
    JSON.parse(@http_client.get("/#{API_PATH}/advice", headers: @headers).body)
  end

  def get_all_advices() : JSON::Any
    JSON.parse(@http_client.get("/#{API_PATH}/advice/all", headers: @headers).body)
  end
end
