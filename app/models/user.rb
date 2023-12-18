class User < ApplicationRecord
    has_secure_password

    
    validates :email , presence: true 

    enum category: %i[student school firm]

end
