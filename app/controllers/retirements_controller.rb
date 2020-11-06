class RetirementsController < ApplicationController
  def new
  end

  def destroy
    if current_user.destroy
      reset_session
      redirect_to root_path, notice: "退会完了しました"
    end
  end
end
