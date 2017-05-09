module ApplicationHelper
  def bootstrap_class_for flash_type
    { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }.stringify_keys[flash_type.to_s] || flash_type.to_s
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
		  concat(content_tag :div, "#{content_tag :div, message, :class => 'container'}".html_safe, :class => "container alert col-md-auto #{bootstrap_class_for(msg_type)}", :role => 'alert')
    end
    nil
  end
end
