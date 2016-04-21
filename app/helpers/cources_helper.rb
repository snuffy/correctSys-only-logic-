module CourcesHelper
  def attend_cource?(cource)
   current_user.cources.where(id:params[:id]).presence
  end
end
