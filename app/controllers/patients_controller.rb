class PatientsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_patient, except: [:index, :new, :create]

  def index
  	@patients = Patient.all
  end

  def new
  	@patient = Patient.new
  end

  def create
  	@meetings = Meeting.all
  	@patient = current_user.patients.new(patient_params)
  	if @patient.save
  		redirect_to @patient
	  else
	  	render :new
	  end
  end

  def show
  end

  def edit
	end

  def update
	  if @patient.update(patient_params)
	    redirect_to @patient
	  else
	    render :edit
	  end
	end

  def destroy
  	@patient.destroy
  	redirect_to patients_path
  end

  private

  def set_patient
  	@patient = Patient.find(params[:id])
  end

  def patient_params
  	params.require(:patient).permit(:disease, :body)
  end
end
