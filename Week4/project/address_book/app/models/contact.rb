class Contact < ActiveRecord::Base
	validates :phone_number, format: { with: /\b\d{3}[-.]?\d{3}[-.]?\d{4}\b/,
    message: "Enter 000-000-0000" }
    validates :address, format: { with: /\d{4}[ ]?\A[a-zA-Z]+\z{4}?/,
    message: "only allows letters" }

    def make_favorite!
    	self.favorited = true
    end
end
