class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def new
  end


  end
