class DosesController < ApplicationController
  before_action :set_cocktail, only: [:new, :create, :destroy]

  def new
    @dose = Dose.new
  end

  def create
    @dose = @cocktail.doses.build(dose_params)
    @dose.save
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_dose_path
  end

  private
  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def set_cocktail
      @cocktail = Cocktail.find(params[:cocktail_id])
  end
end



