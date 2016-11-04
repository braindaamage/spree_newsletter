class CreateSpreeNewslatterUsers < ActiveRecord::Migration
  def change
    create_table :spree_newslatter_users do |t|
      t.string :email

      t.timestamps
    end
    add_index :spree_newslatter_users, :email
  end
end
