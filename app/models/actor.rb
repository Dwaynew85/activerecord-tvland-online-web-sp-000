class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    self.characters.collect { |char| "#{char.name} - #{char.show.name}"}
  end

end

# ryan = Actor.new(:first_name => "Ryan", :last_name => "Reynolds")
# deadpool = Character.new(:name => "Deadpool")
# wade = Character.new(:name => "Wade Wilson")
# wade.actor = ryan
# deadpool.actor = ryan
# origins = Show.new(:name => "X-Men Origins: Wolverine")
# pool = Show.new(:name => "Deadpool Is Awesomesauce")
# deadpool.show = pool
# wade.show = origins
# origins.save
# deadpool.save
