class CreateUsers < ActiveRecord::Migration[5.1]

        def self.up

          create_table :users do |t|
               t.column :user, :string, :limit => 32, :null => false
               t.column :password, :string, :limit => 10, :null => false
               t.column :first_name, :string, :limit => 30
               t.column :last_name, :string, :limit => 30
               t.column :created_at, :timestamp
            end

              User.create :user => "soul", :password => "pass1234"
        			User.create :user => "user2", :password => "pass1234"
        			User.create :user => "user3", :password => "pass1234"
        			User.create :user => "user4", :password => "pass1234"
        			User.create :user => "user5", :password => "pass1234"
          end

          def self.down
             drop_table :users
          end
end
