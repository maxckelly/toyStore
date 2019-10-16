class ToysController < ApplicationController
  def index
    @toys = Toy.all
    # @toys.destroy
    # redirect_to :root
  end

  def new 
    @new_toy = Toy.new
  end

  def create
    @new_toy = Toy.new(toy_params)
    @new_toy.save
    redirect_to action: "view", id: @new_toy.id
  end

  def view 
    @new_toy = Toy.find(params[:id])
  end

  def update

  end

  def destroy
    @new_toy = Toy.find(params[:id])
    @new_toy.destroy
    redirect_to :root
  end

  private
  def toy_params
    params.require(:toy).permit(:name, :description, :date, :user)
  end  
end
