class AddCampaignToSpreeNewslatterUser < ActiveRecord::Migration
  def up
    add_column :spree_newslatter_users, :campaign, :string
  end

  def down
    remove_column :spree_newslatter_users, :campaign
  end
end
