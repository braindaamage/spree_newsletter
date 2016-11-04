class Spree::NewslatterController < ApplicationController
  skip_before_filter  :verify_authenticity_token, only: :create

  def create
    @newslatter_user = Spree::NewslatterUser.new(newslatter_user_params)
    respond_to do |format|
      if @newslatter_user.save
        flash[:notice] = 'Email agregado correctamente.'
        format.html { redirect_to('/cybermonday_success') }
      else
        flash[:error] = 'El email ya se encuentra guardado.'
        format.html { redirect_to('/cybermonday_error') }
      end
    end
  end

  private

    def newslatter_user_params
      params.require(:newslatter_user).permit(:email, taxon_ids: [])
    end


end
