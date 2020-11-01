Rails.application.routes.draw do
  root "welcome#index"
  get "/auth/:provider/callback" => "sessions#create"
  delete "/logout" => "session#destroy"
end
