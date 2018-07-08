class LawsuitsController < ApplicationController
  before_action :set_lawsuit, only: [:edit, :update, :show]

  def index
    @lawsuits = Lawsuit.all
  end

  def new
  	@lawsuit = Lawsuit.new
  end

  def edit
  end

  def update
    if @lawsuit.update(lawsuit_params)
      flash[:notice] = "Lawsuit was updated!"
      redirect_to lawsuit_path(@lawsuit)
    else
      render 'edit'
    end
  end

  def create
  	@lawsuit = Lawsuit.new(lawsuit_params)
  	if @lawsuit.save
  		flash[:notice] = "Lawsuit was successfully created"
  		redirect_to lawsuits_url
  	else render 'new'
  	end
  end

  def show
  end

  def destroy
    @lawsuit = Lawsuit.find(params[:id])
    @lawsuit.destroy
    flash[:notice] = "Lawsuit was deleted!"
    redirect_to lawsuits_path
  end

  private
def lawsuit_params
  params.require(:lawsuit).permit(:description, :justification, :win, :complainant_id, :defendant_id, :judge_id, :corrector_id)
end

def set_lawsuit
  @lawsuit = Lawsuit.find params[:id]
end

end
