Rails.application.routes.draw do

#  urls POST /urls(.:format)          urls#create
# new_url GET  /urls/new(.:format)      urls#new
#     url GET  /urls/:id(.:format)      urls#show
#    root GET  /                        urls#new
#         GET  /:data(.:format)         urls#redirect
# preview GET  /:data/preview(.:format) urls#preview




  resources :urls, only: [:new, :create, :show]

  root 'urls#new'

  get '/:data', to: 'urls#redirect'
  get '/:data/preview', to: 'urls#preview', as: :preview


end

