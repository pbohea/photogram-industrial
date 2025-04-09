class UsersController < ApplicationController
  def show
    @user = User.find_by!(username: params.fetch(:username))
    render "users/show"
  end

  def liked
    @user = User.find_by!(username: params.fetch(:username))
  end

  def feed
    @user = User.find_by!(username: params.fetch(:username))
  end

  def discover
    @user = User.find_by!(username: params.fetch(:username))
  end

  def pending
    @user = User.find_by!(username: params.fetch(:username))
    @user.follow_requests = pending
  end



end
