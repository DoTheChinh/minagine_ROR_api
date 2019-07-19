module Session
    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
      unless @current_user
        user = User.find_by(id: cookies.encrypted[:user_id])
        if user && user.authenticated?(:remember, cookies[:remember_digest])
          login! user
          @current_user = user
        end
      end
      @current_user
    end
  
    def authenticate
      if current_user  
        redirect_to login_path unless logged_in? && current_user
      else
        redirect_to login_path unless logged_in? && current_user.author? 
      end 
    end
  
    def login!(user)
      return unless user.update!(last_login: Time.current)
      
      session[:user_id] = user.id
    end
  
    # def remember(user)
    #   token = Secure.token
    #   return unless user.update!(remember_digest: Secure.digest(token))
     
    #   cookies.permanent.encrypted[:user_id] = user.id
      
    #   cookies.permanent[:remember_digest] = token
    # end
  
    # def remember_user(user)
    #   token = Secure.token
    #   return unless user.update!(remember_digest: Secure.digest(token))
    #   # Security: encrypt the cookie with user_id
    #   cookies.permanent.encrypted[:guest_id] = user.id
    #   # set cookie is very long time
    #   cookies.permanent[:remember_digest] = token
    # end
  
    def log_out(user)
      session.clear
      cookies.delete :user_id
      cookies.delete :remember_digest
      @current_user = nil
    end
  
    def logged_in?
      current_user.present?
    end
  
    def search
      @orders = Order.search(params[:search])
    end
  end
  