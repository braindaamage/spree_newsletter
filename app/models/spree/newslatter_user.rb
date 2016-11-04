class Spree::NewslatterUser < ActiveRecord::Base
  has_and_belongs_to_many :taxons, join_table: :spree_newslatter_user_taxons

  validates_presence_of :email
  validates_uniqueness_of :email
  validates :email , email: true
end
