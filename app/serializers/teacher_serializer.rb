class TeacherSerializer < ActiveModel::Serializer

  include Rails.application.routes.url_helpers

  attributes :id, :first_name, :last_name, :age, :email, :phone_no, :qualification, :address, :classes, :profile_image_url

  def classes
    object.school_class.map{ |s| s.name}
  end

  def profile_image_url
    ENV['HOST'] + Rails.application.routes.url_helpers.rails_blob_url(object.profile_image, only_path: true)
  end
end
