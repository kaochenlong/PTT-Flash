ActionController::Routing::Routes.draw do |map|
  
  map.resources :guestbooks, :controller => 'guestbook'
  map.resources :registers, :controller => 'register'
  map.resource :sessions

  map.root :controller => 'main', :action => 'index'
  
  map.with_options :controller => 'main' do |m|
    m.connect '/downloads', :action => 'downloads'
    m.connect '/about', :action => 'about'
    m.connect '/source', :action => 'source'
  end
  
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  
  # map.connect ':controller/:action/:id'
  # map.connect ':controller/:action/:id.:format'
end
