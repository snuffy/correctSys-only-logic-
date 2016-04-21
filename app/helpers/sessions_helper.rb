module SessionsHelper

  def login(user,distinguish)
    session[:user_id] = user.id
    session[:distinguish] = distinguish
  end

  def current_user

    if(user_id = session[:user_id])

      distinguish = session[:distinguish]

      if(distinguish == false)

        @current_user ||= User.find(user_id)

      elsif(distinguish == true)

        @current_user ||= Teacher.find(user_id)

      end

    end
  end

  def user_or_teacher?
    if session[:distinguish] == true
      return 'teacher'
    else
      return 'user'
    end
  end
  def logout
    session.delete(:user_id)
    @current_user = nil
  end
end
