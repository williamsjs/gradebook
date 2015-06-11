class SessionsController < ApplicationController

  def login
    if request.post?
      user = check_type(params[:email])
      type = user.class.to_s.downcase
      type_id = type + "_id"
      session[:user_id] = user.id
      if user && user.authenticate(params[:password])
        session[type_id.to_sym] = user.id
        redirect_to get_path(type), notice: "Login complete"
      else
        flash.now[:notice] = "Invalid email or password"
      end
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to sessions_login_path, notice: "Successfully logged out."
  end

  private def check_type(email)
        if Teacher.find_by_email(email)
          Teacher.find_by_email(params[:email])
        elsif Student.find_by_email(email)
          Student.find_by_email(params[:email])
        elsif Parent.find_by_email(email)
          Parent.find_by_email(params[:email])
        end
      end

      def get_path(type)
        if type == "student"
          students_path
        elsif type == "parent"
          parents_path
        elsif type == "teacher"
          teachers_path
        end
      end
end
