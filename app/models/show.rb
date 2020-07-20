class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  def actors_list
    self.characters.collect {|show| show.character.actor.full_name}
  end
end
