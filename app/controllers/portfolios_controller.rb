class PortfoliosController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @portfolios = @user.portfolios.all
  end

  def new
    @user = User.find(params[:user_id])
    @portfolio = @user.portfolios.new
  end

  def create
    @user = User.find(params[:user_id])
    @portfolio = @user.portfolios.new(portfolio_params)
    if @portfolio.save
      flash[:notice] = "portfolio successfully added!"
      redirect_to user_portfolios_path(@user)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:user_id])
    @portfolio = Portfolio.find(params[:id])
  end

  def edit
    @portfolio = Portfolio.find(params[:id])
  end

  def update
    @portfolio = Portfolio.find(params[:id])
    if @portfolio.update(portfolio_params)
      flash[:notice] = "portfolio successfully updated!"
      redirect_to  portfolio_path
    else
      render :edit
    end
  end

  def destroy
    @portfolio = Portfolio.find(params[:id])
    @portfolio.destroy
    flash[:notice] = "portfolio successfully deleted!"
    redirect_to root_path
  end

  private
  def portfolio_params
    params.require(:portfolio).permit(:name, :description, :user_id) ## Rails 4 strong params usage
  end

end
