Rails.application.routes.draw do
  get "/handlers/:action", controller: "handlers"
end
