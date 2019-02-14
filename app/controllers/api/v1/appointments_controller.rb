class Api::V1::AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
    render json: @appointments
  end

  def show
    @appointment = Appointment.find(params[:id])
    render json: @appointment, status: :ok
  end

  def create
    @appointment = Appointment.create(appointment_params)
    render json: @appointment, status: :created
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(appointment_params)
    @rating = appointment_params["chef_rating"].to_f
    @current_chef = Chef.find(@appointment.chef_id)
    @all_chef_appointment = @current_chef.appointments
    @all_chef_ratings = @all_chef_appointment.select{|a| a.chef_rating > 0 }.map{|a| a.chef_rating}
    @current_chef.update(rating: @all_chef_ratings.reduce(:+) / @all_chef_ratings.count)
    render json: @appointment, status: :accepted
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.delete
  end

  private

  def appointment_params
    params.require(:appointment).permit(:user_id, :guest_count, :chef_id, :cost, :note, :datetime, :chef_rating, :review)
  end

end
