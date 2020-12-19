class AddCoverToPatient < ActiveRecord::Migration[6.1]
  def change
  	add_attachment :users, :cover
  end
end
