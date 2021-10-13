
  Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://d2fe-203-190-54-83.ngrok.io'
      resource '*', :headers => :any, :methods => [:get, :post, :put, :patch, :options, :delete], :credentials => true
    end
    end