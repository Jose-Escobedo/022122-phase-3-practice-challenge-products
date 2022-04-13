class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews



    def leave_review(user, star_rating, comment)
        Review.create(comments: "#{comment}", star_rating: star_rating, user_id: "#{user.id}", product_id: "#{self.id}")
    end

    def print_all_reviews
        self.reviews.map do |review|
            puts "Review for #{self.name} by #{review.user.name}: #{review.star_rating}. #{review.comments}
        "
        end
        
    end

    def average_rating
        self.reviews.star_rating.sum / self.reviews.length +1
    end
end