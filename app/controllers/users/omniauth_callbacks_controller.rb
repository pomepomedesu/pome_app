# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    authorization
   end
  
   def google_oauth2
    authorization
   end

   def omniauth auth
    self.provider = auth.provider
    self.uid = auth.uid
    self.save
    self
  end

  class << self
    def from_omniauth auth
      User.where(provider: auth.provider, uid: auth.uid).first
    end
  end

  
   private
  
   def authorization
    sns_info = User.from_omniauth(request.env["omniauth.auth"])
    @user = sns_info[:user]
 
    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
    else
      @sns_id = sns_info[:sns].id
      render template: 'devise/registrations/new'
    end
  end
 
end
