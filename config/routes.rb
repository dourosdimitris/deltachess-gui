Rails.application.routes.draw do
  get 'game/home'
  get 'game/transmission'
  get 'game/demo'
  get 'game/help'

  post 'game/update'

  get 'game/fullscreen'

  root 'game#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
