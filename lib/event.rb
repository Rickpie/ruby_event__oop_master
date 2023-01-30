class Event
    attr_accessor :debut, :duree, :titre, :invites

    def initialize(debut,duree,titre,users)
        @debut = Time.parse(debut)
        @duree = duree 
        @titre = titre
        @invites = users
        
    end

    def postpone_24
        @debut = @debut + 60*60*24
    end

    def end_date
        return @debut + duree*60
    end

    def is_past?
        @debut < Time.now
    end

    def is_future?
        !self.is_past?
    end

    def is_soon?
        @debut < Time.now + 1800
    end

    def to_s
        puts "Soyez pret pour #{titre}"
        puts "ça commence le #{debut} "
        puts "cela va durer environ #{duree} minutes"
        puts "Sont invités Mr/Mme :" 
        invites.each { | user | puts user.email}
    end

end