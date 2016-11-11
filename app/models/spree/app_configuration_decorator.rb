Spree::AppConfiguration.class_eval do
  preference :newslatter_redirect_success, :string, default: '/'
  preference :newslatter_redirect_error, :string, default: '/'

end
