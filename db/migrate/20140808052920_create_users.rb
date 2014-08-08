Sequel.migration do
  change do
    create_table :users do
      primary_key :id
      String :email, null: false
      String :password_digest, null: false
      String :nickname
      Time :created_at
      Time :updated_at
      index :email, unique: true
    end
  end
end
