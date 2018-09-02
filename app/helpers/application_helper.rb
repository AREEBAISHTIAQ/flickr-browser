module ApplicationHelper
    def title
        if @user.present?
            "#{@user.username} :: Flickr"
        else
            'Flickr'
        end
    end

    def brand
        if @user.present?
            title = "#{@user.username}"
        else
            title = 'flickr'
        end
        link_to title, :root, class: 'navbar-brand'
    end
end
