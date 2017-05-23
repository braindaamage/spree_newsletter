class Spree::NewslatterController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: :create

  def create
    @newslatter_user = Spree::NewslatterUser.new(newslatter_user_params)
    respond_to do |format|
      if @newslatter_user.save
        format.html { redirect_to(newslatter_redirect_success) }
      else
        format.html { redirect_to(newslatter_redirect_error) }
      end
    end
  end

  private

  def newslatter_user_params
    params.require(:newslatter_user).permit(:email, taxon_ids: []).merge(campaign: current_campaign)
  end
end
