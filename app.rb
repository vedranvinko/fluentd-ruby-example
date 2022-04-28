# frozen_string_literal: true

require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    puts 'Hello from fluentd-ruby'
  end
end