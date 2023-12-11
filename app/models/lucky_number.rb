class LuckyNumber < ApplicationRecord
    validates_uniqueness_of :numbers_count
end
