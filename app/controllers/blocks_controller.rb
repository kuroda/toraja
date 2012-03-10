class BlocksController < ApplicationController
  def create
    Block.create!(params[:block])
    render text: "OK"
  end
  
  def update
    Block.find(params[:id]).update_attributes!(params[:block])
    render text: "OK"
  end
end
