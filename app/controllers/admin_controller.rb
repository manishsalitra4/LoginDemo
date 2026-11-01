class AdminController < ApplicationController
  before_action :authenticate_admin

  def index
    @submissions = Submission.order(created_at: :desc).limit(200)
  end

  private

  def authenticate_admin
    authenticate_or_request_with_http_basic("LoginDemo Admin") do |username, password|
      expected = ENV["ADMIN_PASSWORD"]
      expected.present? && username == "admin" &&
        ActiveSupport::SecurityUtils.secure_compare(password, expected)
    end
  end
end
