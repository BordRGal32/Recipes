RecipeBook::Application.routes.draw do
  match('/', {via: :get, :to => 'recipes#index'})
  match('recipes', {via: :get, :to => 'recipes#index'})
  match('recipes', {via: :post, :to => 'recipes#create'})
  match('recipes/new', {via: :get, :to => 'recipes#new'})
  match('recipes/:id', {via: :get, :to => 'recipes#show'})
  match('recipes/:id/edit', {via: :get, :to => 'recipes#edit'})
  match('recipes/:id/edit', {via: [:patch, :put], :to => 'recipes#update'})
  match('recipes/:id', {via: :delete, :to => 'recipes#destroy'})



  match('tags', {via: :get, :to => 'tags#index'})
  match('tags', {via: :post, :to => 'tags#create'})
  match('tags/new', {via: :get, :to => 'tags#new'})
  match('tags/:id', {via: :get, :to => 'tags#show'})
  match('tags/:id/edit', {via: :get, :to => 'tags#edit'})
  match('tags/:id', {via: [:patch, :put], :to => 'tags#update'})
  match('tags/:id', {via: :delete, :to => 'tags#destroy'})
  match('recipes/:id/:tag_id', {via: :delete, :to => 'recipes#remove_tag'})

  # match('reviews', {via: :get, :to => 'reviews#index'})
  match('ratings', {via: :post, :to => 'ratings#create'})
  match('recipes/:id/ratings/new', {via: :get, :to => 'ratings#new'})
  # match('reviews/:id', {via: :get, :to => 'reviews#show'})
  # match('reviews/:id/edit', {via: :get, :to => 'reviews#edit'})
  # match('reviews/:id', {via: [:patch, :put], :to => 'reviews#update'})
  # match('reviews/:id', {via: :delete, :to => 'reviews#destroy'})
  # match('recipes/:id/:tag_id', {via: :delete, :to => 'recipes#remove_tag'})


end
