class CommentsController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

  def index
    @comment = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
   @article = Article.find(params[:article_id])
   @comment = @article.comments.create(comment_p) 
   newUser?
   redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private
    def newUser?
      @all_arts = Article.all
      @all_arts.each do |a|
        a.comments.each do |c|
          if !isUser? c.commenter
            @user = User.new(c.commenter)
          end
        end
      end
    end

  private
    def isUser? com
      already = false
      User.all.each do |u|
        logger.debug "CHECK OUT MY SICK #{u}"
        if u.name == com
          already = true
        end
      end
    end


  private
    def comment_p
      params.require(:comment).permit(:commenter, :body)
    end
end

