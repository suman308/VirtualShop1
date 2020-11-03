json.array! @ratings do |rating|
  
    json.partial! "api/ratings/rating", rating: rating
    
end 