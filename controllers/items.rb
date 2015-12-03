class ItemsController < ApplicationController

  # read (show list)
  get "/" do
    # get all items from the DB
    @items = Item.all
    # show them appropriately using read.erb
    erb :read
  end



  # create (add to the list)
  get "/create" do
    # show the view
    erb :create
  end
  post "/create" do
    # get the info from the form
    p params
    @item = Item.new
    @item.name = params[:name]
    @item.quantity = params[:quantity]
    @item.save

    # display a message confirming the addition
    @message = "You have added " + @item.name + " to your list!"

    # show the view
    erb :message
  end



  # update (change a current item)
  get "/update/:id" do
    p params
    @item = Item.find(params[:id])

    # show the view
    erb :update
  end
  post "/update" do
    # get the info from the form and save it
    p params
    @item = Item.find(params[:id])
    @item.name = params[:name]
    @item.quantity = params[:quantity]
    @item.save

    # display a message confirming the addition
    @message = "You have updated " + @item.name + "!"

    # show the view
    erb :message
  end



  # destroy (remove an item from the list (and database))
  get "/destroy/:id" do
    p params
    @item = Item.find(params[:id])

    # show the view
    erb :destroy
  end
  post "/destroy" do
    @item = Item.find(params[:id])
    @item.destroy

    # show the view
    @message = "Your item has been removed!"
    erb :message    
  end


  # TODO home, login, registration

  get "/home" do

    erb :home

  end



  get "/login" do

    erb :login

  end

  post "/submit_login" do

    puts params
    # return params.to_json

  end




  get "/registration" do

    erb :registration

  end

end
