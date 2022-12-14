class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user, dependent: :destroy

  def prev_message
    chatroom.messages.where("id < ?", id).last
  end

  def sender?(a_user)
    user.id == a_user.id
  end

  has_many_attached :attachments, dependent: :destroy

  # validate :attachments_content_type, if: -> { attachments.attached? }

  # private

  # def attachments_content_type
  #   allowed = %w[image/jpeg image/jpeg image/webp image/png application/pdf application/msword]
  #   if allowed.exclude?(attachments.content_type)
  #     errors.add(:attachments, message: 'Logo must be a JPG, JPEG, WEBP, PNG, DOC File, or PDF File')
  #   end
  # end
end
