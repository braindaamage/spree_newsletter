class Spree::NewslatterUser < ActiveRecord::Base
  has_many  :newslatter_user_taxons
  has_many  :taxons, through: :newslatter_user_taxons
end
