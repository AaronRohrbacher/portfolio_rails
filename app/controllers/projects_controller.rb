class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @user = User.find(params[:user_id])
    @project = Project.new
  end

  def create
    @user = current_user
    @project = @user.projects.new(project_params)
    if @project.save!
      flash[:notice] = "project successfully added!"
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      flash[:notice] = "project successfully updated!"
      redirect_to  project_path
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    flash[:notice] = "project successfully deleted!"
    redirect_to root_path
  end

  private
  def project_params
    params.require(:project).permit(:name, :description) ## Rails 4 strong params usage
  end

end
