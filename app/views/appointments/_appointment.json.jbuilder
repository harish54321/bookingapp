json.extract! appointment, :id, :name, :startdate, :enddate, :phonenumber, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)