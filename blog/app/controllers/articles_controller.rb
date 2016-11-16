class ArticlesController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def index
    @articles = Article.all
  end
  def new
    @article = Article.new
  end
  
  def edit
    @article = Article.find(params[:id])
  end

  
  def create
    @article = Article.new(article_p)

    if @article.save #saves new Article to db; if invalid, returns false
      redirect_to @article #links to the 'show' action in the controller
    else
      render 'new' #renders the 'new' method'
    end
  end

  def show
    @article = Article.find(params[:id]) #searches the db for the Article with  the passed in id
  end
  
  def update
    @article = Article.find(params[:id])

    if @article.update(article_p)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end


  private
    def article_p
      params.require(:article).permit(:title, :text)
    end

end
