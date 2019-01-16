Rails.application.routes.draw do
  devise_for :users
  root 'post_images#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :post_images, only: [:new, :create, :index, :show] do
  	resource :post_comments, only: [:create, :destroy]
      # post_commentsのshowページは必要ない（コメントの詳細ページは作成しない）ため、idを受け渡す必要がなくresourceとしています
  end

end
