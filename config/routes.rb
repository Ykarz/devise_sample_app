Rails.application.routes.draw do
  root "home#index"

  # deviseで作成したコントローラーへのルーティング
  devise_for :users,
            path: "",
            path_names: { sign_in: 'login', sign_out: 'logout' }
end
