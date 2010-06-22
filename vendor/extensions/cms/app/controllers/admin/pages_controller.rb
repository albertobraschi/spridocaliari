class Admin::PagesController < Admin::BaseController
  resource_controller :except => [:show]
  
  
  index.response do |wants|
    wants.html { render :action => :index }
    wants.json { render :json => @collection.to_json()  }
  end
  
  new_action.response do |wants|
    wants.html {render :action => :new, :layout => false}
  end
  
  create.before :create_before

  create.response do |wants|
    # go to edit form after creating as new page
    wants.html {redirect_to edit_admin_page_url(Page.find(@page.id)) }
  end

  update.response do |wants|
    # override the default redirect behavior of r_c
    # need to reload Page in case name / permalink has changed
    wants.html {redirect_to edit_admin_page_url(Page.find(@page.id)) }
  end
  
  private
    def collection

      unless request.xhr?
        # Note: the SL scopes are on/off switches, so we need to select "not_deleted" explicitly if the switch is off
        # QUERY - better as named scope or as SL scope?
        #if params[:search].nil? || params[:search][:deleted_at_not_null].blank?
        #  base_scope = base_scope.not_deleted
        #end

        @search = Page.search(params[:search])
        @search.order ||= "ascend_by_title"

        @collection = @search.paginate(:page => params[:page])
      else
        @collection = Page.title_contains(params[:q]).all(:include => includes, :limit => 10)
        @collection.uniq!
      end

    end
    
    # set the default published and comment status if applicable
    def create_before
      return unless Spree::Config[:cms_page_status_default]
      @page.is_active = Spree::Config[:cms_page_status_default]
    end
    
end
