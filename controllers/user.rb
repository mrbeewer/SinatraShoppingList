class UserController < ApplicationController




    not_found do
      erb :not_found
    end

    get "/" do
      authorization_check
      @user_name = session[:current_user].user_name
      @items = Item.all
      erb :index
    end

    get "/not_authorized" do
      erb :not_authorized
    end

    # user registration
    get "/register" do
      erb :register
    end
    post "/register" do
      p params

      # check if the user name already exists
      if does_user_exist(params[:user_name]) == true
        return {:message => "user already exists"}.to_json
      end

      if (params[:user_email] != "" && params[:user_name] != "" && params[:password] != "")
        # make the user name
        user = Account.create(user_email: params[:user_email], user_name: params[:user_name], password: params[:password])

        p user

        session[:current_user] = user

        # force the URL to the root
        redirect "/items/"
      else
        @message = "All fields must have a value"
        erb :register
        # return @message
        # return $("body").append("Error!")
        # return {:message => "All fields must have a value"}.to_json
      end
    end



    # login
    get "/login" do
      erb :login
    end
    post "/login" do
      if (does_user_exist(params[:user_name]) == true && params[:password] != "")
        user = Account.authenticate(params[:user_name], params[:password])
        if user
          session[:current_user] = user
          redirect "/items/"
        else
          @message = "Your password or account information is incorrect"
          erb :login
        end
      else
        redirect "/users/login"
      end
    end

    # logout
    get "/logout" do
      authorization_check
      session[:current_user] = nil
      redirect "/"
    end

end
