Sequel.migration do
  change do
    create_table(:schema_migrations) do
      column :filename, "text", :null=>false
      
      primary_key [:filename]
    end
    
    create_table(:users) do
      primary_key :id
      column :email, "text", :null=>false
      column :password_digest, "text", :null=>false
      column :nickname, "text"
      column :created_at, "timestamp without time zone"
      column :updated_at, "timestamp without time zone"
      
      index [:email], :unique=>true
    end
  end
end
Sequel.migration do
  change do
    self << "INSERT INTO \"schema_migrations\" (\"filename\") VALUES ('20140808052920_create_users.rb')"
  end
end
