Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/query_params_url" => "params_examples#query_params_action"
    get "/name_url" => "params_examples#name_action"
    get "/guess_query_url" => "params_examples#guess_query_action"

    get "/url_segment/:wildcard" => "params_examples#url_segment_action"
    get "/guess_segment_url/:user_guess" => "params_examples#guess_query_action"
  end
end


# "localhost:3000/api/url?key=value"
# "localhost:3000/api/url/value"
