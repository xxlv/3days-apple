json.array!(@users) do |user|
  json.extract! user, :id, :name, :sex, :introduce, :area_introduce, :ask_money, :qcode, :avatar, :email, :password, :username
  json.url user_url(user, format: :json)
end
