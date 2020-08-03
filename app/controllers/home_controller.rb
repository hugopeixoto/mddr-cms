class HomeController < ApplicationController
  def index
  end

  def login
    if params[:password] == ENV["PASSWORD"]
      cookies[:name]     = { same_site: 'Strict', value: params[:name] }
      cookies[:auth]     = { same_site: 'Strict', value: SecureRandom.hex(16) }
      cookies[:password] = { same_site: 'Strict', value: params[:password] }

      redirect_to organizations_path
    else
      redirect_to root_path
    end
  end

  def logout
    cookies.clear
    redirect_to root_path
  end

  def name
    if cookies[:auth].present? && cookies[:password] == ENV["PASSWORD"]
      cookies[:name] = { same_site: 'Strict', value: params[:name] }
    end

    redirect_to root_path
  end
end
