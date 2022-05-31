class Api::V1::RidesController < ApplicationController
  before_action :find_horse

def index 
  @rides = @horse.rides.all
  render json: @rides
end 

def show
  @ride = @horse.rides.find(params[:id])
  render json: @ride
end

def create 
  @ride = @horse.rides.new(ride_params)
  if @ride.save
    render json: @ride
  else 
    render json: { error: "Unable to add Ride." }, status: 400
  end
end 

def update 
  @ride = @horse.rides.find(params[:id])
  if @ride
    @ride.update(ride_params)
    render json: { message: "Ride successfully updated." }, status: 200
  else
    render json: { error: "Unable to update Ride." }, status: 400
  end
end

def destroy
  @ride = @horse.rides.find(params[:id])
  if @ride 
    @ride.destroy
    render json: { message: "Ride successfully deleted." }, status: 200
  else
    render json: { error: "Unable to delete Ride." }, status: 400
  end
end

private 
  def ride_params
  params.require(:ride).permit(:day, :exercise, :tack, :walk, :trot, :canter, :notes)
  end 

  def find_horse
    @horse = Horse.find(params[:horse_id])
  end
  
end
