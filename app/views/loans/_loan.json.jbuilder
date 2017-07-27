json.extract! loan, :id, :principal, :months, :years, :interest, :created_at, :updated_at
json.url loan_url(loan, format: :json)
