class DosesController < ApplicationController
def index
    @doses = Dose.all
  end

  def show
    @dose = Dose.find(params[:id])
  end

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(params[dose_params])
    @dose.save
  end

  def edit
    @dose = Dose.find(params[:id])
  end

  def update
    @dose = Dose.find(params[:id])
    @dose.update(params[dose_params])
    redirect_to cocktail_path(@dose)
  end
  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktails.path
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient, :cocktail)
  end
end
