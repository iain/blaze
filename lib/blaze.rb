require 'blaze/version'
require 'blaze/configuration'
require 'net/http'
require 'json'

module Blaze
  extend self

  def configure
    yield configuration
  end

  def configuration
    @configuration ||= Configuration.new
  end

  def speak(message)
    configuration.validate!
    port = configuration.ssl ? 443 : 80

    req = Net::HTTP::Post.new("/room/#{configuration.room_id}/speak.json")
    req.basic_auth configuration.token, 'X'
    req.body = { :message => { :body => message } }.to_json
    req.content_type = "application/json"
    req["User-Agent"] = "Blaze"

    res = Net::HTTP.start("#{configuration.account}.campfirenow.com", port, :use_ssl => configuration.ssl) do |http|
      http.request(req)
    end

    if res.is_a?(Net::HTTPSuccess)
      warn "Campfire message sent!"
    else
      warn "Campfire communication failed!"
      warn res.inspect
      warn res.body.inspect
    end
  end

end
