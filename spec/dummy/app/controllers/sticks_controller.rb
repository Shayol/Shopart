class SticksController < ApplicationController
  def index
    @sticks = Stick.all
  end
end
