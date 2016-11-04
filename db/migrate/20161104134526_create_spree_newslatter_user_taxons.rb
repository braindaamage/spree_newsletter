class CreateSpreeNewslatterUserTaxons < ActiveRecord::Migration
  def change
    create_table :spree_newslatter_user_taxons do |t|
      t.integer :newslatter_user_id
      t.integer :taxon_id

      t.timestamps
    end
  end
end
