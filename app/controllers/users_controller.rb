class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = '新しいユーザーを登録しました。'
      redirect_to @user
    else
      flash.now[:danger] = 'ユーザーの登録に失敗しました。'
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def user_params
    params.require( :user ).permit( :name, :email, :password, :password_confirmation, :image, :introduce, :age, :sex, :address )
  end
end
