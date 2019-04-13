begin
  db = YAML.load_file(Rails.root.join('config', 'database.yml'))[Rails.env]

  if db['adapter'] == 'sqlite3'
    abort "Adapter #{db['adapter']} coming soon!"
  elsif db['adapter'] == 'mysql2'
    `mysql -u #{db['username']} -p#{db['password']} #{db['database']} < #{File.join(__dir__, 'includes/sql/provinces.sql')}`
    `mysql -u #{db['username']} -p#{db['password']} #{db['database']} < #{File.join(__dir__, 'includes/sql/regencies.sql')}`
    `mysql -u #{db['username']} -p#{db['password']} #{db['database']} < #{File.join(__dir__, 'includes/sql/districts.sql')}`
    `mysql -u #{db['username']} -p#{db['password']} #{db['database']} < #{File.join(__dir__, 'includes/sql/villages.sql')}`
  elsif db['adapter'] == 'postgresql'
    abort "Adapter #{db['adapter']} coming soon!"
  end

  Province.update_all(created_at: DateTime.now, updated_at: DateTime.now)
  Regency.update_all(created_at: DateTime.now, updated_at: DateTime.now)
  District.update_all(created_at: DateTime.now, updated_at: DateTime.now)
  Village.update_all(created_at: DateTime.now, updated_at: DateTime.now)

rescue
  abort "Failed import SQL file!"
end
