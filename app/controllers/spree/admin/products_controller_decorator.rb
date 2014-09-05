Spree::Admin::ProductsController.class_eval do

  before_filter :load_providers

  def load_providers
    @providers = Spree::Provider.all
  end

end