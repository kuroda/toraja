class BlocksController < ApplicationController
  def create
    block = Block.create!(params[:block])
    render text: block.id
  end
  
  def update
    Block.find(params[:id]).update_attributes!(params[:block])
    render text: "OK"
  end
end
