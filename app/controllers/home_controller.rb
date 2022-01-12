class HomeController < ApplicationController
  def sign_in
    id = params[:title]
    psd = params[:content]
    @post = Post.all #should be changed for fast checking
    @post.each do |content|
      if id == content.title.to_s
        if psd == content.content.to_s
          redirect_to '/list'
          return
        end
        if psd != content.content.to_s
          redirect_to '/wrong_signed'
          return
        end
      else
        next
      end
    end
  end

  def index
  end

  def wrong_signed
  end

  def create
    post = Post.new
    @postData = Post.all
    post.title = params[:title]
    @postData.each do |content|
      if post.title == content.title
        redirect_to '/wrong_signed'
        return
      end
    end
    post.content = params[:content]
    post.save
    #@id = id ? id : "Nothing"
    #@pw = pw ? pw : "Nothing"
    redirect_to '/list'
  end

  def list
    @post = Post.all
  end

  def modify
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.title = params[:title]
    post.content = params[:content]
    post.save
      redirect_to '/list'
  end

  def delete
    Post.destroy(params[:id])
    redirect_to '/list'
  end
end
