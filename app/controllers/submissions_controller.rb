class SubmissionsController < ApplicationController
  def new
  end

  def create
    @submission = Submission.new(
      username1: params[:username1].to_s.strip.first(120),
      username2: params[:username2].to_s.strip.first(120)
    )

    if @submission.save
      redirect_to root_path, notice: "Both usernames were submitted successfully."
    else
      flash.now[:alert] = "Please enter both usernames."
      render :new, status: :unprocessable_entity
    end
  end
end
