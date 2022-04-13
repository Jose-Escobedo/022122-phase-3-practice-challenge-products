class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :product

    def print_review
        puts "Review for #{self.product} by #{self.user}: #{self.star_rating}. #{self.comments}"
    end
end