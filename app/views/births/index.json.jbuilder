json.array!(@births) do |birth|
  json.extract! birth, :id, :childname, :fathername, :mothername, :bloodgroup, :genotype, :sorigin, :sex, :date, :time, :lga, :sbirth, :nationality, :raddress, :occupation, :nmidwife, :mage, :fage, :weight, :dreg, :time, :reg_num
  json.url birth_url(birth, format: :json)
end
