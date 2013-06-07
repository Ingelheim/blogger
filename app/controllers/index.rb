


get '/' do
  # Look in app/views/index.erb
  @tag = Tag.all.sort_by {|tag| tag.name}
  @posts = Post.all
  erb :index    
end

get '/tag' do
  # Look in app/views/index.erb
  @tag = Tag.all.sort_by {|tag| tag.name}
  @tag_id = params[:tag]
  @posts = Tag.find(@tag_id).posts
  erb :tag
end


get '/create' do
  # Look in app/views/index.erb
 
  erb :create
end


get '/edit' do
  @post_id = params[:id]
  # Look in app/views/index.erb
  @tag = Tag.all.sort_by {|tag| tag.name}
  @post = Post.find(@post_id)
  # @tag_id = @post.tag_id
 
  erb :edit
end


get '/create' do
  @post_id = params[:id]
  # Look in app/views/index.erb
  @tag = Tag.all.sort_by {|tag| tag.name}
  @post = Post.find(@post_id)
  # @tag_id = @post.tag_id
 
  erb :edit
end

post '/new_post' do
  # redirect to('/')
  split = params.keys[0].split("")
  split.shift
  @country = split.join("")

  erb :write
end

post '/delete' do
  # redirect to('/')
  id = params.keys.first
  # p id

  post = Post.find(id)

  tag = post.tags.first

  tag_id = tag.id

  if tag.posts.count <= 1
    Tag.destroy(tag_id)
  end  

  Post.destroy(id)

# redirect to('/')
  # p params
 erb :index 
  # erb :write
end


post '/save/:country' do
  country = params[:country]
  title = params[:title]
  text = params[:text]
  url = params[:url]

  post = Post.create(title: title, text: text, url: url)
  post.tags << Tag.find_or_create_by_name(country)

  redirect to('/')
end



post '/edit/:id' do
  post = Post.find(params[:id])

    url = params[:new_url]

  post.update_attributes(title: params[:title], text: params[:text], url: url)

  @tag = Tag.all.sort_by {|tag| tag.name}
  @tag_id = post.tags.first.id
  @posts = Tag.find(@tag_id).posts

  erb :tag
end


post '/delete/:id' do
  post = Post.find(params[:id])

  if params[:change_pic?] == "true"
    url = params[:new_url]
  else
    url = post.url  
  end  

  post.update_attributes(title: params[:title], text: params[:text], url: url)

  @tag = Tag.all.sort_by {|tag| tag.name}
  @tag_id = post.tags.first.id
  @posts = Tag.find(@tag_id).posts

  erb :tag
end




get '/test' do
  # Look in app/views/index.erb
 p params
  # erb :create
end
