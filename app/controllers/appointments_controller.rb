class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]
  
  def index
    @appointments = Appointment.all
  end
  
  def show
  end

  def new
    @appointment = Appointment.new
    @booked_slots = Appointment.new.booked_slots
    @available_slots = Appointment.new.time_slot  - Appointment.new.booked_slots
  binding.pry  
  end

  def edit
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to action: :show, id: @appointment.id
    else
    end
  end

  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to @appointment, notice: 'Appointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to appointments_url, notice: 'Appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    def appointment_params
      params.require(:appointment).permit(:name, :starttime, :date, :phonenumber)
    end
end
