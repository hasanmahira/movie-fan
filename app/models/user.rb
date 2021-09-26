class User < ApplicationRecord
    has_secure_password

    has_many :sessions

    #issuperadmin eklenebilir

end
