class ProjectUsersController < ApplicationController
  before_filter :verify_admin
  def index
    @project = Project.find(params[:project_id])
    @project_user_list = @project.project_users    
    @project_users = ProjectUser.new
  end

  def create
    @project = Project.find(params[:project_id])
    @project_users = @project.project_users.create(params[:project_users])
    flash[:success] = "User was added to the project."
    redirect_to project_project_users_path(@project)
  end

  def destroy
    @project = Project.find(params[:project_id])
    @project_users = @project.project_users.find(params[:id]).destroy
    flash[:success] = "User was removed from the project."
    redirect_to project_project_users_path(@project)
  end

end
