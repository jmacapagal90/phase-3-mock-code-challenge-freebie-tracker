class Dev < ActiveRecord::Base
    has_many :freebies ## a dev can have many freebies 
    has_many :companies, through: :freebies ## a dev can get from many companies through freebies

    def received_one(item_name) 
       received_item_dev_id = Freebie.find_by(item_name: item_name).dev_id ##get the dev id of the item 
       received_item_dev_id == self.id ? true : false  ## check if the dev id from freebie matches the devs id in dev table
    end

    def give_away(dev,freebie)
        dev_id = Dev.find_by(name: dev).id ## get the dev id
        freebie_id = Freebie.find_by(item_name: freebie).id ## get the freebie id
        Freebie.update(freebie_id,dev_id: dev_id) #update the dev id in the freebie (via freebie id) to the dev id provided in arguments
    end
end
