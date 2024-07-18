class HomeController < ApplicationController
  def index
    @tables = Table.all
    render
  end
end