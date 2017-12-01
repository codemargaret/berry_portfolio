class SkillsController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index, :show]

  before_action :only => [:new, :edit] do
    redirect_to new_user_session_path unless current_user && current_user.admin
  end

  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
    @endorsements = @skill.endorsements
  end
end
