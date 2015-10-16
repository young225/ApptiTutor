json.array!(@skills) do |skill|
  json.extract! skill, :id, :One, :AAC
  json.url skill_url(skill, format: :json)
end
