module ApplicationHelper
    #returns the fill title on a per-page basis
    def full_title(page_title = '')
        base_title = "Moment"
        if page_title.empty?
            base_title
        else
            page_title + " | " + base_title
        end
    end
end
