Rails.application.routes.draw do
  root to: 'questions#index'
  
  resources :questions, only: [:index, :new, :create, :show] do
    resources :answers, only: [:create]  # ネストして回答を質問に紐づけ
  end
end
