class Api::V1::HorsesController < ApplicationController

def index 
  @horses = Horse.all
  render json: @horses
end 

def show
  @horse = Horse.find(params[:id])
  render json: @horse
end

def create 
  @horse = Horse.new(horse_params)
  if @horse.save
    render json: @horse
  else 
    render error { error: "Unable to add Horse." }, status: 400
  end
end 

def update 
  @horse = Horse.find(params[:id])
  if @horse
    @horse.update(horse_params)
    render json: { message: "Horse successfully updated." }, status: 200
  else
    render json: { error: "Unable to update Horse." }, status: 400
  end
end

def destroy
  @horse = Horse.find(params[:id])
  if @horse 
    @horse.destroy
    render json: { message: "Horse successfully deleted." }, status: 200
  else
    render json: { error: "Unable to delete Horse." }, status: 400
  end
end

private 
  def horse_params
  params.require(:horse).permit(:name, :sex, :age, :imageUrl)
  end 

end
