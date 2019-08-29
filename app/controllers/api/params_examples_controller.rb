class Api::ParamsExamplesController < ApplicationController

  def query_params_action
    first_message = params["my_message"]
    second_message = params["second_message"]
    @message = "The message is #{first_message}, and the second message is #{second_message}"
    render "query_params.json.jb"
  end

end
