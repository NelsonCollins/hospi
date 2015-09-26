json.array!(@deaths) do |death|
  json.extract! death, :id, :rdate, :dname, :sex, :color, :age, :occupation, :mstatus, :nationality, :birthplace, :cdate, :place, :cdeath, :nextkin, :doctor, :cleared, :user_id
  json.url death_url(death, format: :json)
end
