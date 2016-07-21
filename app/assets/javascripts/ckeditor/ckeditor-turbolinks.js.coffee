$(document).on('turbolinks:load', (e) ->
  #do your initialize here
  $('textarea.ckeditor').each ->
    CKEDITOR.replace(this) if $(this).css('visibility') != 'hidden'
    ckid = "##{$(this).attr('id')}"
    setTimeout ( (ele) ->
      rows = $(ckid).attr('rows')
      height = rows * 20
      #console.log "Resize #{ckid} for #{rows} rows: #{$(ckid).next("div.cke").find(".cke_contents").css("height")} to #{height}px"
      $(ckid).next("div.cke").find(".cke_contents").css("height", "#{height}px")
    ), 500

  #Turbolinks.Cache() if Turbolinks DOESNT WORK!!!
)
