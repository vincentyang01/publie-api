class Business < ApplicationRecord
    belongs_to :seller
    has_many :bids
    has_many :buyers, through: :bids

    has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
    validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

    has_attached_file :document
    validates_attachment :document, :content_type => { :content_type => %w(application/pdf application/msword) }

end

