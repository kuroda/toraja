class BlocksController < ApplicationController
  def create
    block = Block.create!(params[:block])
    render text: block.id
  end
  
  def update
    block = Block.find(params[:id])
    block.update_attributes!(params[:block])
    render text: "OK"
  end
end
