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
    render json: @appointment, status: :accepted
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.delete
  end

  private

  def appointment_params
    params.require(:appointment).permit(:user_id, :guest_count, :chef_id, :cost, :note, :datetime)
  end

end
