class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def create
    user = params['user']
    User.create(name: user['name'],
                email: user['email'])
    NewMailer.news_welcome(user['email']).deliver_now
    redirect_to(:back)
  end
end
