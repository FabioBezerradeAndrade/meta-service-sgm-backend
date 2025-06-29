module LocaleHandler
    extend ActiveSupport::Concern
  
    included do
      before_action :set_locale
    end
  
    private
  
    def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
    end
  end
