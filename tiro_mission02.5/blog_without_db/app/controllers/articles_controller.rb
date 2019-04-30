class ArticlesController < ApplicationController
  def index
    @articles = Array.new
    @titles = ""
    @authors = ""
    @texts = ""
    if params.has_key?(:titles) || params.has_key?(:authors) || params.has_key?(:texts)
      if params[:titles].empty?
        puts "empty"
      else
        @titles = params[:titles]
        @authors = params[:authors]
        @texts = params[:texts]
      end
    end
    if (params.has_key?(:title) || params.has_key?(:author) || params.has_key?(:text))
      @titles = @titles + " " + params[:title]
      @authors = @authors + " " + params[:author]
      @texts = @texts + " " + params[:text]
    end
    puts "titles is #{@titles}, authors is #{@authors}, texts is #{@texts}"
    @articles = restruct(@titles, @authors, @texts)
    #puts "articles is #{@articles}"
  end

  def show
  end

  def new
  end

  def edit
  end


  def destroy
    titles = Array.new
    authors = Array.new
    texts = Array.new
    while params[:check_box].last
      index = params[:check_box].last
      titles = delete_string_at(params[:titles], index.to_i)
      authors = delete_string_at(params[:authors], index.to_i)
      texts = delete_string_at(params[:texts], index.to_i)
      params[:check_box].pop
    end
    puts "titles is #{titles}, authors is #{authors}, texts is #{texts}"
    redirect_to '/'
  end

  def restruct(titles, authors, texts)
    puts "restruct"
    articles = Array.new
    _titles = titles.split(" ")
    _authors = authors.split(" ")
    _texts = texts.split(" ")
    # use zip method to iterate multiple array in one
    _titles.zip(_authors, _texts) do |title, author, text|
      row = {}
      row[:title] = title
      row[:author] = author
      row[:text] = text
      articles.push(row)
    end
    return articles
  end

  def delete_string_at(string, index)
    _string = string.split(" ")
    _string.delete_at(index)
    _string.join(" ")
    return _string
  end

end
