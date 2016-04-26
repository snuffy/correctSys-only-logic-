module CourcesHelper

  include SessionsHelper
  def attend_cource?(cource)
    current_user.cources.find(cource.id).presence
  end
end
