require 'rack/cors'
require_relative './config/environment.rb'
# require_relative "./app/application.rb"

use Rack::Cors do

    allow do
        origins '*'
        resource '/*', headers: :any, methods: [:get, :post, :patch, :put, :delete]  
    end
end


run Application.new