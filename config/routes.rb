ActionController::Routing::Routes.draw do |map|
  map.resources :unittests
  map.root :controller => "unittests"
end
