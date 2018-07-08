class PetitionsController < ApplicationController
  before_action :set_petition, only: [:edit, :update, :show]
  #before_action :authenticate_user!

  def index
    @petitions = Petition.all

  end

  def new
  	@petition = Petition.new
  end

  def edit
  end

  def update
    if @petition.update(petition_params)
      flash[:notice] = "Petition was updated!"
      redirect_to petition_path(@petition)
    else
      render 'edit'
    end
  end

  def create
  	@petition = Petition.new(petition_params)
  	if @petition.save
  		flash[:notice] = "Petition was successfully created"
      redirect_to new_answer_url
  	else render 'new'
  	end
  end

  def create_replica
    @petition = Petition.new(petition_params)
  	if @petition.save
  		flash[:notice] = "Petition was successfully created"
      redirect_to edit_lawsuit_url
  	else render 'new'
  	end
  end

  def show
  end

private

def petition_params
  params.require(:petition).permit(:history, :pedido, :facts, :justification, :addressing, :user_id, :lawsuit_id)
end

def set_petition
  @petition = Petition.find params[:id]
end

end
