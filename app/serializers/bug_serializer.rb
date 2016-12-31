class BugSerializer < ActiveModel::Serializer
  attributes :id, :app_token, :number, :status, :priority, :comment, :state_id
end
