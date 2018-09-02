module ApplicationHelper
    def title
        if @user.present?
            "#{@user.username} :: Flickr browser"
        else
            'Flickr browser'
        end
    end

    def brand
        if @user.present?
            title = "#{@user.username}"
        else
            title = 'flickr browser'
        end
        link_tp title, :root, class: 'navbar-brand'
    end
end
