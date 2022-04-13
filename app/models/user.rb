class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews

   
    def favorite_product
        self.product.where("star_rating")
    end

    def remove_reviews(product)
        
    end
end