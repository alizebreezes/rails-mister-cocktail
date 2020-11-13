class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)

    if @dose.save
      redirect_to @dose
    else
      render :new
    end
  end

  def dose_params
    params.require(:dose).permit(:description)
  end
end
