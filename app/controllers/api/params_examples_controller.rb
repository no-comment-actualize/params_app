class Api::ParamsExamplesController < ApplicationController

  def query_params_action
    first_message = params["my_message"]
    second_message = params["second_message"]
    @message = "The message is #{first_message}, and the second message is #{second_message}"
    render "query_params.json.jb"
  end

  def name_action
    input_name = params[:name]
    @message = input_name.upcase
    if input_name.upcase.starts_with?("A")
      @message = "Hey your name starts with A!"
    end
    render "name.json.jb"
  end

  def guess_query_action
    winning_number = 36
    user_guess = params[:user_guess].to_i
    if user_guess > winning_number
      @message = "Pick lower!"
    elsif user_guess < winning_number
      @message = "Pick higher!"
    else
      @message = "You win!"
    end
    render "guess_query.json.jb"
  end

  def url_segment_action
    user_input = params[:wildcard]
    @message = "The url segment is #{user_input}"
    render "url_segment.json.jb"
  end

  def body_params_action
    secret = params[:secret_info]
    @message = "The secret info is #{secret}"
    render "body_params.json.jb"
  end

  def login
    username = params[:username]
    password = params[:password]
    @message = "Invalid credentials"
    if username == "hugh" && password == "swordfish"
      @message = "Valid Credentials"
    end
    render "login.json.jb"
  end

end
