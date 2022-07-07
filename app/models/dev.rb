class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one(item_name)
       received_item_dev_id = Freebie.find_by(item_name: item_name).dev_id
       received_item_dev_id == self.id ? true : false
    end

    def give_away(dev,freebie)
        dev_id = Dev.find_by(name: dev).id
        freebie_id = Freebie.find_by(item_name: freebie).id
        Freebie.update(freebie_id,dev_id: dev_id)
    end
end
