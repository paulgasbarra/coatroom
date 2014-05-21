class UsersController < ApplicationController

#users GET /users(.:format) users#index
  def index
    @user = current_user
    @users = User.all
  end
# POST /users(.:format)users#create
  def create
    user = User.create(user_params)
    redirect_to user_path(user)
  end

# new_user GET /users/new(.:format) users#new
  def new
    @user = User.new
  end

# edit_user GET /users/:id/edit(.:format) users#edit
  def edit
    @user = User.find(params[:id])
  end

# user GET /users/:id(.:format) users#show
  def show
   @user = User.find(params[:id])
   @hold_records = @user.hold_records
  end
# PUT /users/:id(.:format) users#update
  def update
    @user = User.find(params[:id])
    redirect_to user_path(@user)
  end

# DELETE /users/:id(.:format)
  def destroy
    User.delete(params[:id])
    redirect_to users_path
  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :email, :password, :credit_card)
  end

end
