class WelcomeController < ApplicationController
  def index
    @leagues = League.order(:name)
  end
end
