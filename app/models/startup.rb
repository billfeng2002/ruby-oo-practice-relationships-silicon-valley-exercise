class Startup
    attr_accessor :name
    attr_reader :founder, :domain
    @@all=[]
    def self.all
        @@all
    end

    def initialize(name, founder, domain)
        @name=name
        @founder=founder
        @domain=domain
        self.class.all << self
    end

    def pivot(domain, name)
        @domain=domain
        self.name=name
    end

    def self.find_by_founder(founder)
        self.all.find{|startup| startup.founder==founder}
    end

    def self.domains
        self.all.map{|startup| startup.domain}
    end

    def sign_contract(vc, type, investment)
        FundingRound.new(self, vc, type, investment)
    end

    def num_funding_rounds
        FundingRound.all.count{|fundingRound| fundingRound.startup==self}
    end

    def total_funds
        FundingRound.all.sum{|fundingRound| fundingRound.investment}
    end

    def investor
        FundingRound.all.select{|fr| fr.startup==self}.uniq
    end

    def big_investors
        FundingRound.select{|fr| (fr.startup==self) && (VentureCapitalist.tres_commas_club.find(fr)==true)}.uniq
    end
end
