module ApplicationHelper
  def display_links
    separator = " | "
    if @auth
      link_to('profile', profile_path) +
      link_to('logout', logout_path) +
      link_to('create item', new_item_path)
    else
      link_to('register', register_path) +
      link_to('login', login_path)
    end 
  end
end
