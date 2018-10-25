class Doctor < ApplicationRecord
	has_many :appointments
	has_many :patients, through: :appointments
	belongs_to :city
	has_many :middle
	has_many :specialties, through: :middle
end


# rails generate migration AddPartNumberToProducts part_number:string
# class AddPartNumberToProducts < ActiveRecord::Migration[5.0]
#  def change
#    add_column :products, :part_number, :string
#  end
# end