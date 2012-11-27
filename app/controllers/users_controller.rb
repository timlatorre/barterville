class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def edit

  end

  def update
    if @auth.update_attributes(params[:user])
      redirect_to profile_path
    else
      render :edit
    end
  end
end
