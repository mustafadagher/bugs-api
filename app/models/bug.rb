class Bug < ApplicationRecord
  has_one :state

  PRIORITY_VALUES = %w(minor major critical)
  STATUS_VALUES = %w(new In-progress closed)

  validates_presence_of :app_token, :status, :priority
  validates_uniqueness_of :number, scope: :app_token
  validates :status, inclusion: { in: STATUS_VALUES }
  validates :priority, inclusion: { in: PRIORITY_VALUES }

  auto_increment :number, scope: [:app_token],
                 initial: '1',
                 force: true,
                 lock: false

end
