module Paginate
  def pagination(h={})

    page = h[:page] || 0
    per_page = h[:per_page]
    Resource.limit(h[:per_page]).offset(page * h[:per_page])
    #=> Returns an AR relation of ten Resource objects

    # Resource.limit(h[:per_page]).offset(page * h[:per_page]) do |relation_of_ten|
      # do_something_with(relation_of_ten)
    # end
  end
end