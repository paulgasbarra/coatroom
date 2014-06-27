class AddPasswordDigestToChecker < ActiveRecord::Migration
  def change
    add_column :checkers, :password_digest, :string
  end
end
