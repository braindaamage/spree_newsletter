module Spree
  Taxon.class_eval do
    has_many  :newslatter_user_taxons
    has_many  :newslatter_users, through: :newslatter_user_taxons

  end
end
