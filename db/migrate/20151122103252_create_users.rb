class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    t.text :imie
    t.text :nazwisko
    t.date :data_ur
    end
  end
end

#rails g migration create_users