class TopController < ApplicationController
  def index
    @blocks = Block.all
  end
end
