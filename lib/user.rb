class User
    attr_accessor :email, :age
    
    def initialize(email,age)
        @email = email
        @age = age
        @@all_users = []
        @@all_users << self
      end
end



