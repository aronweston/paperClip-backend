Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3001' # this actually needs an explicit list of real URLs on Heroku
    resource '*',
    :headers => :any,
    :methods => %i( get post put patch delete options head ), # %i converts it to symbols
    credentials: true
  end

  allow do
    origins 'https://124.168.75.194:3001' # update with heroku domain
    resource '*',
    :headers => :any,
    :methods => %i( get post put patch delete options head ), # %i converts it to symbols
    credentials: true
  end
end