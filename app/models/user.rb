class User < ApplicationRecord
    #issuperadmin eklenebilir

    has_secure_password

    has_many :sessions

end
