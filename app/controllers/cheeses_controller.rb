class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    #send JSON response using that cheese object
    cheese = Cheese.find_by(id: params[:id])
    #find a cheese using the id from the URL
    render json: cheese
  end

end
