class Person
  attr_accessor :first_name, :last_name

	def initialize(first_name=nil, last_name=nil)
		@first_name, @last_name = first_name, last_name
	end

  def full_name
    (@first_name.to_s + ' ' + @last_name.to_s).strip
  end
end
