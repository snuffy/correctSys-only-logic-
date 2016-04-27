module CourcesHelper

  include SessionsHelper
  def attend_cource?(cource)
    return false if current_user.nil?
    current_user.cources.where(id: params[:id]).presence
  end
end
