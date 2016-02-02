class Contact < ActiveRecord::Base
	validates :phone_number, format: { with: /\b\d{3}[-.]?\d{3}[-.]?\d{4}\b/,
    message: "Enter 000-000-0000" }
    validates :address, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
end
