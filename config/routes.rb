Rails.application.routes.draw do
  post "/prepare" => "beverages#prepare"
end
