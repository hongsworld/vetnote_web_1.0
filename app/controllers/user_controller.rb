#coding:utf-8
class UserController < ApplicationController
  def login 
    id = params[:id]
    password = params[:password]
    
    if id == "admin" and password == "admin"
      session[:token] == "ADMIN"
      redirect_to :controller => :vetnote, :action => :main
    elsif id == "guest" and password == "guest"
      session[:token] == "GUEST"
      redirect_to :controller => :vetnote, :action => :main
    else
      session[:notice] == "아이디 및 비밀번호가 올바르지 않습니다"
      redirect_to :back
    end
  end
end
