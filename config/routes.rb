Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Inventing the CRUD ourting (in the head of DHH)
  # simplest request is a get

  # read all tasks
  get 'tasks', to: 'tasks#index', as: :tasks
  # could have also been list
  get 'tasks/new', to: 'tasks#new', as: :new

  # read one task
  get 'tasks/:id', to: 'tasks#show', as: :task

    # create one task (2 requests)
    # first request is to get (display?) the empty form to write the details about the restaurant
    # second request - when you submit the form, you make a request to post the
    # params and retrieve them in the controller and save in the database

  post 'tasks', to: 'tasks#create'

  # update one task (2 requests)
    # get the edit form
    # post the params again and actually update in the database
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
    # this is just a stupid action to render the form
  patch 'tasks/:id', to: 'tasks#update'

  # delete one task
  delete 'tasks/:id', to: 'tasks#destroy'
end
