class Registrant
  attr_accessor :name, :age, :permit, :license_data
  def initialize(name, age, permit = false)
    @name = name
    @age = age
    @permit = permit
    @license_data = {
      written: false,
      license: false,
      renewed: false
    }
  end
  def permit?
    @permit == true
  end
  def earn_permit
    @permit = true if @age >= 15
  end
end