class EndorsementsController < ApplicationController
  def new
    @skill = Skill.find(params[:skill_id])
    @endorsement = Endorsement.new
  end

  def create
    @skill = Skill.find(params[:skill_id])
    @endorsement = @skill.endorsements.new(endorsement_params)
    if @endorsement.save
      flash[:notice] = "Endorsement successfully added!"
      redirect_to skill_path(@skill)
    else
      render :new
    end
  end

  def edit
    @endorsement = Endorsement.find(params[:id])
    @skill = @endorsement.skill
  end

  def update
    @endorsement = Endorsement.find(params[:id])
    if @endorsement.update(endorsement_params)
      flash[:notice] = "Endorsement successfully updated!"
      redirect_to skill_path(@endorsement.skill)
    else
      render :edit
    end
  end

  def destroy
    @endorsement = Endorsement.find(params[:id])
    @endorsement.destroy
    flash[:notice] = "Endorsement successfully deleted!"
    redirect_to skill_path(@endorsement.skill)
  end

  private
    def endorsement_params
      params.require(:endorsement).permit(:body, :skill_id, :user_id)
    end
end
