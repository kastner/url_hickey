ActionController::Routing::Routes.draw do |map|
  map.resources :environments

  map.resources :unittests
  map.root :controller => "unittests"
  map.set_unittest_title '/unitttests/:id/set_title', :controller => "unittests", :action => "set_unittest_title"
end
