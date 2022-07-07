class Freebie < ActiveRecord::Base
    belongs_to :company ## a freebie can only come from one company
    belongs_to :dev ## a freebie can only go to one dev

    def print_details ## has access to dev and company through associations above
        puts "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}"
    end

end
