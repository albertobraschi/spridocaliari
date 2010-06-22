
map.resources :posts #, :as => Spree::Config[:cms_permalink]
map.tag_posts "#{Spree::Config[:cms_permalink]}/tags/:tag_name", :controller => 'posts', :action => 'tags'
map.resources :pages

map.namespace :admin do |admin|
  admin.resource :cms_settings
  admin.resources :posts
  admin.resources :pages
end  