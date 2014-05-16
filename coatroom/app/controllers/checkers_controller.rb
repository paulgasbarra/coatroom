class CheckersController < ApplicationController
# checker GET  checker(.:format) checker#index
  def index
     @checkers = Checker.all
  end

# POST  checker(.:format checker#create
  def create
    checker = Checker.create(checker_params)
    redirect_to "checkers/#{checker.id}"
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
    checker = checker.find(params[:id])
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
    params.require(checker).permit(:name, :phone_number, :email, :password, :credit_card)
  end

      # t.string :name
      # t.string :address
      # t.float :longitude
      # t.float :latitude
      # t.decimal :phone_number
      # t.string :email
      # t.string :password
      # t.integer :bank_account
      # t.integer :bank_routing_number
      # t.boolean :storing
      # t.decimal :ammount_earne


end
