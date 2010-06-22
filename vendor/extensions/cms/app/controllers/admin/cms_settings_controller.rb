class Admin::CmsSettingsController < Admin::BaseController

  def update
    Spree::Config.set(params[:preferences])
    
    respond_to do |wants|
      wants.html { redirect_to admin_cms_settings_path }
    end
  end
  
end 