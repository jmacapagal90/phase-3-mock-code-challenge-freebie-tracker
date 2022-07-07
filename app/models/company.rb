class Company < ActiveRecord::Base
    has_many :freebies ## a company can give away many freebies 
    has_many :devs, through: :freebies ## a company can give to many devs via freebies

    def give_freebie(dev,item_name,value)
        dev_id = Dev.find_by(name: dev).id  ##get the dev id by finding by the devs name
        Freebie.create(item_name: item_name,value: value, company_id: self.id,dev_id: dev_id) ##create a freebie instance using the id of the dev, item name provided,  abd vakye()
    end

    def self.oldest_company 
        oldest_year = self.minimum(:founding_year) ##find the oldest year in founding year column 
        Company.find_by(founding_year: oldest_year) ## find the company with the founding year = oldest year
    end
end
