json.extract! audit_log, :id, :user, :event, :date, :created_at, :updated_at
json.url audit_log_url(audit_log, format: :json)
