class AddActorToCharacters < ActiveRecord::Migration
  def change
    change_table :characters do |t|
    t.belongs_to :actor 
    end
  end
end