class Actor < ActiveRecord::Base
  has_many :characters
  belongs_to :show

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    list = self.characters.map do |character|
      "#{character.name} - #{character.show.name}"
    end
    list.join
  end
end