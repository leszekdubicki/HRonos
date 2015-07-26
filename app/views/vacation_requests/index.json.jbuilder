json.array!(@vacation_requests) do |vacation_request|
  json.extract! vacation_request, :id, :employee_id, :start_date, :end_date, :comments, :manager_comments, :approved
  json.url vacation_request_url(vacation_request, format: :json)
end
