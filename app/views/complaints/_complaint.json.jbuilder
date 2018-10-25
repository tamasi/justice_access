json.extract! complaint, :id, :conflict_id, :complainant_id, :institution_id, :court_id, :cost_free_attorney, :created_at, :updated_at
json.url complaint_url(complaint, format: :json)
