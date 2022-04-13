json.extract! tenant, :id, :name, :email, :subdomain, :created_at, :updated_at
json.url tenant_url(tenant, format: :json)
