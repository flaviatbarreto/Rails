class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Cadastro criado com sucesso!!!"
      redirect_to new_user_path
    else
      render :new
    end
  end
end

