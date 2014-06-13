#coding:utf-8
class VetnoteController < ApplicationController
  def index
    @notice = session[:notice]
    render :layout => false
  end

  def main
  end
end
