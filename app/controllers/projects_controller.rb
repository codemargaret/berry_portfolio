class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index, :show]

  before_action :only => [:new, :edit] do
    redirect_to new_user_session_path unless current_user && current_user.admin
  end
end
