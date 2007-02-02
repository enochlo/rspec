class RenderSpecController < ApplicationController
  def some_action
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def text_action
    render :text => "this is the text for this action"
  end
  
  def action_with_partial
    render :partial => "a_partial"
  end
  
end