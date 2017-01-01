class BugSerializer < ActiveModel::Serializer
  attributes :id, :app_token, :number, :status, :priority, :comment
  has_one :state
end
