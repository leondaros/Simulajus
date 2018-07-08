class Lawsuit < ApplicationRecord

  belongs_to :complainant, :class_name => 'User', optional: true
  belongs_to :defendant, :class_name => 'User', optional: true
  belongs_to :judge, :class_name => 'User', optional: true
  belongs_to :corrector, :class_name => 'User', optional: true

  scope :by_user, ->(id){
      unless id.present?
        return all
      end
      where "player_turn_id like ?","%#{id}%"
    }

end
