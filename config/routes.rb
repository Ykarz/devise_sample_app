Rails.application.routes.draw do
  # deviseで作成したコントローラーへのルーティング
  devise_for :users,
             path: "",
             path_names: { sign_in: 'login', sign_out: 'logout' }

  # Defines the root path route ("/")
  # root "posts#index"
end
