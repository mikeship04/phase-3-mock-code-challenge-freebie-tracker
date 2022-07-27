class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        freebies.any? {|freebies| freebie.item_name == item_name }
    end

    def give_away(dev, freebie)
        freebie.update(dev: dev) if (freebie.dev == self)
    end

end
