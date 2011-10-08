module AttachmentsHelper
  def attachment_helper(a)
    file_name = attachment_name(a)
    file_type = MIME::Types.type_for(file_name).join('/').split('/')[0]
    output = ''
    if file_type == "image"
      output << link_to(image_tag(a.attachment, {:size => "128x128"}) , a.attachment.to_s, :target => "_blank")
      output << attachment_name(a)
    else
      output << link_to(file_name, a.attachment.to_s, :target => "_blank")
    end
    output
  end

  def attachment_name(a)
    a.attachment.to_s.split('?')[0].split('/')[-1]
  end
end
