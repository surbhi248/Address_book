class CommentsController < ApplicationController
 
  def create
    @comment = Comment.create(params.require(:comment).permit(:add_comment))

  
      if @comment.save
        flash[:notice]= "Comment was successfully created." 
        redirect_to root_path
        
      else
        flash[:alert]="comment not added"
        end
    end
  end

  
