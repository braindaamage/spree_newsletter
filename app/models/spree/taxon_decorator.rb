module Spree
  Taxon.class_eval do
    has_and_belongs_to_many :newslatter_users, join_table: :spree_newslatter_user_taxons


  end
end
