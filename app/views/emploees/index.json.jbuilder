json.array!(@emploees) do |emploee|
  json.extract! emploee, :id, :emploee_id, :first_name, :last_name, :start_date, :job_id, :salary, :manager_id, :department_id
  json.url emploee_url(emploee, format: :json)
end
