module ApplicationHelper
  def flash_alerts
    res = ''
    flash.keys.each do |k|
      res +=
        content_tag :div, class: "alert #{ flash_class(k) } fade in", data: { alert: 'alert' } do
          link_to('&times;'.html_safe, '#', class: 'close', data: { dismiss: 'alert' }) + content_tag(:p, flash[k])
        end
    end
    res
  end

  def flash_class(k)
    case k
      when :info then 'alert-info'
      when :error, :alert then 'alert-error'
      when :notice, :success then 'alert-success'
      else ''
    end
  end
end
