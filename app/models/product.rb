class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews



    def leave_review(user, star_rating, comment)
        Review.create(comments: "#{comment}", star_rating: star_rating, user_id: "#{user.id}", product_id: "#{self.id}")
    end

    def print_all_reviews
        puts "Review for #{self.name} by #{self.user.name}: #{self.review.star_rating}. #{self.review.comments}
        "
    end

    def average_rating
        self.reviews.star_rating.average
    end
end