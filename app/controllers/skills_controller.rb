class SkillsController < ApplicationController
  def index
    @skills = Skill.all
  end

  def new
    @user = current_user
    if params[:portfolio_id]
      @association = Portfolio.find(params[:portfolio_id])
    else
      @association = current_user
    end
      @skill = Skill.new
  end

  def create
    @user = current_user
    if params[:portfolio_id]
      @association = Portfolio.find(params[:portfolio_id])
    else
      @association = @user
    end
    @skill = @association.skills.new(skill_params)
    if @skill.save!
      flash[:notice] = "skill successfully added!"
      redirect_to user_path(@user)
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
      redirect_to user_portfolio_path(@user, @portfolio)
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
    params.require(:skill).permit(:name, :description) ## Rails 4 strong params usage
  end

end
