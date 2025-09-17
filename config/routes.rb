Rails.application.routes.draw do
  devise_for(:users)
  get("up" => "rails/health#show", :as => :rails_health_check)

  resources(:course) do
    resources(:lessons, only: [:index, :show, :create])
  end

  resources(:lessons, only: []) do
    resources(:quizes, only: [:show, :create])
    resources(:progresses, only: [:create, :update])
  end

  resources(:questions, only: []) do
    resources(:answers, only: [:create])
  end

  resources(:quizes, only: []) do
    resources(:questions, only: [:create])
  end

  get("leaderboard", to: "leaderboard#index")
end
