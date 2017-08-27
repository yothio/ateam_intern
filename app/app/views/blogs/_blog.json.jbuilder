json.extract! blog, :id, :postnum, :title, :good, :comment, :posttime, :created_at, :updated_at
json.url blog_url(blog, format: :json)
