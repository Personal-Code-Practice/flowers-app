class Api::V1::FlowersController < ApplicationController
  def index
    @flowers = Flower.all
   render 'index.html.erb'
  end

  def new
    @flower = Flower.new
    render 'new.html.erb'
  end

  def create
    @flower = Flower.new(
      name: params[:name],
      color: params[:color]
    )
    if @flower.save
      redirect_to "/api/v1/flowers/#{@flower.id}"
    else
      render 'new.html.erb'
    end
  end

  def show
    @flower = Flower.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def edit
    @flower = Flower.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @flower = Flower.find_by(id: params[:id])
    @flower.assign_attributes(
      name: params[:name],
      color: params[:color]
    )
    if @flower.save
      redirect_to "/api/v1/flowers/#{@flower.id}"
    else
      render 'edit.html.erb'
    end
  end

  def destroy
    @flower = Flower.find_by(id: params[:id])
    @flower.destroy
    redirect_to '/api/v1/flowers'
  end
end
