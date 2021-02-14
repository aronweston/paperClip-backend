if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_paperclip_app", domain: "heroku"
else
  Rails.application.config.session_store :cookie_store, key: "_paperclip_app"
end