class Todo < ApplicationRecord
  validates :title, presence: true,
  length: {minimum: 2}

  validates :ddl, presence: true
end
