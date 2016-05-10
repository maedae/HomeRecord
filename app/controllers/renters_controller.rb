class RentersController < ApplicationController
  def new
    @renter = Renter.new
  end

  def create
    @renter = Renter.new(renter_params)
    if @renter.save
      login(params[:renter][:email], params[:renter][:password])
      flash[:success] = 'Welcome!'
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def renter_params
    params.require(:renter).permit(:email, :password, :password_confirmation, :first_name, :last_name, :image)
  end
end