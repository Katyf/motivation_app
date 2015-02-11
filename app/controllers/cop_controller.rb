class CopController < ApplicationController
  def mode_options
  end

  def set_mode
    if params[:name] == 'good'
      current_user.update_attributes(good_cop?: true)
    elsif params[:name] == 'bad'
       current_user.update_attributes(good_cop?: false)
    end

    redirect_to tasks_path
  end

end
