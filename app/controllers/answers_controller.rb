class AnswersController < ApplicationController
  before_action :set_answer, only: [:edit, :update, :show]

def index
  @answers = Answer.all
end

def new
  @answer = Answer.new
end

def edit
end

def update
  if @answer.update(answer_params)
    flash[:notice] = "answer was updated!"
    redirect_to answer_path(@answer)
  else
    render 'edit'
  end
end

def create
  @answer = Answer.new(answer_params)
  if @answer.save
    redirect_to new_lawsuit_url
  else render 'new'
  end
end

def show
end

  private
  def answer_params
    params.require(:answer).permit(:defense_type, :lawsuit_type, :evidence, :addressing_type, :petition_id)
  end

  def set_answer
    @answer = Answer.find params[:id]
  end
end
