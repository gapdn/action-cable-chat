# frozen_string_literal: true

class AddDeviseToUsers < ActiveRecord::Migration[7.0]
  def self.up
    change_table :users do |t|
      t.string :encrypted_password, null: false, default: ''
    end
  end

  def self.down
    remove_column :users, :encrypted_password
  end
end
