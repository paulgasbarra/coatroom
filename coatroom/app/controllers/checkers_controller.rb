class CheckersController < ApplicationController
# checker GET  checker(.:format) checker#index
  def index
     @checkers = Checker.all
  end

# POST  checker(.:format checker#create
  def create
    checker = Checker.create(checker_params)
    redirect_to checker_path(checker)
  end

# new Checker GET  checker/new(.:format) checker#new
  def new
     @checker = Checker.new
  end

# edit Checker GET  checker/:id/edit(.:format) checker#edit
  def edit
     @checker = Checker.find(params[:id])
  end

# Checker GET  checker/:id(.:format) checker#show
  def show
    @checker = Checker.find(params[:id])
  end
# PUT  checker/:id(.:format) checker#update
  def update
    checker = Checker.find(params[:id])
    redirect_to checker_path(checker)
  end

# DELETE  checker/:id(.:format)
  def destroy
    Checker.delete(params[:id])
    redirect_to checker_path
  end


  private

  def checker_params
    params.require(:checker).permit(:first_name, :last_name, :street_address, :apt_number, :city, :state, :phone_number, :email, :password, :bank_account, :bank_routing_number)
  end



end
