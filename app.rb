# frozen_string_literal: true

require 'fluent-logger'
require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    puts 'Hello from fluentd-ruby'
    Fluent::Logger::FluentLogger.open(nil, :host=>'localhost', :port=>24224)
    Fluent::Logger.post("fluentd.test.follow", {"from"=>"userA", "to"=>"userB"})
  end
end