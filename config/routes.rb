class SubdomainConstraint
  def self.matches? request
    subdomains = %w{ www onemonth }
    request.subdomain.present? && !subdomains.include?(request.subdomain)
  end
end


Rails.application.routes.draw do
  constraints SubdomainConstraint do
    resources :projects
  end

  resources :tenants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "tenants#index"
end
