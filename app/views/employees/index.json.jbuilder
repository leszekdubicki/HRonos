json.array!(@employees) do |employee|
  json.extract! employee, :id, :first_name, :last_name, :start_date, :job_id, :salary, :manager_id, :department_id
  json.url employee_url(employee, format: :json)
end
