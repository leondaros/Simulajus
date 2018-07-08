class Petition < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :lawsuit, optional: true

end
