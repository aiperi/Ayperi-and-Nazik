json.array!(@vacancies) do |vacancy|
  json.extract! vacancy, :id, :email, :position, :workPlace, :workingStatus, :description, :contactphone, :deadlinedate, :salary, :companyInfo
  json.url vacancy_url(vacancy, format: :json)
end
