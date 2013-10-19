json.array!(@posts) do |post|
  json.extract! post, :title, :content, :post_img, :embed_url
  json.url post_url(post, format: :json)
end
