class SkillController < ApplicationController
  def index
    @skills = Skill.all
  end

  def new
    @user = current_user
    @skill = @user.skills.new
  end

  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      flash[:notice] = "skill successfully added!"
      redirect_to skill_path(@skill)
    else
      render :new
    end
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
    if @skill.update(skill_params)
      flash[:notice] = "skill successfully updated!"
      redirect_to  skill_path
    else
      render :edit
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    flash[:notice] = "skill successfully deleted!"
    redirect_to root_path
  end

  private
  def skill_params
    params.require(:skill).permit(:name, :description, :user_id, :project_id, :portfolio_id) ## Rails 4 strong params usage
  end

end
