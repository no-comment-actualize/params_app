Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # query params
    get "/query_params_url" => "params_examples#query_params_action"
    get "/name_url" => "params_examples#name_action"
    get "/guess_query_url" => "params_examples#guess_query_action"

    # url segment params
    get "/url_segment/:wildcard" => "params_examples#url_segment_action"
    get "/guess_segment_url/:user_guess" => "params_examples#guess_query_action"

    # body params
    post "/body_params_url" => "params_examples#body_params_action"
  end
end


# "localhost:3000/api/url?key=value"
# "localhost:3000/api/url/value"
