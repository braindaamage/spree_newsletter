class Spree::NewslatterUserTaxon < ActiveRecord::Base
  belongs_to :newslatter_users
  belongs_to :taxons
end
