class Organization < ApplicationRecord

    validates :name , presence: true

    enum category: %i[school firm]
end
