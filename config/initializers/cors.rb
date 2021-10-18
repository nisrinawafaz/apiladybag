
  Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://7fa2-116-206-14-49.ngrok.io'
      resource '*', :headers => :any, :methods => [:get, :post, :put, :patch, :options, :delete], :credentials => true
    end
    end
