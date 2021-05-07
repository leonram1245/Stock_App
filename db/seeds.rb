[:admin, :broker, :buyer].each do |role|
    Role.find_or_create_by_name({ name: role }, without_protection: true)
  end