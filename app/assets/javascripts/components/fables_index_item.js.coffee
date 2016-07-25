  @FableIndexItem = React.createClass
    getInitialState: ->
      like: @props.like
    handleUpdateLikes: (e) ->
      e.preventDefault()
      newvalue = !@state.like
      $.ajax
        method: 'GET'
        url: @props.url_update_likes
        dataType: 'JSON'
        data: { like: newvalue }
        success: (data) =>
          #console.log "Ok: #{data}"
          @setState like: newvalue
          @props.handleUpdateLikes @props.fable, data
        error: (xhr, status, err) =>
          console.error @props.url_update_likes, status, err
    render: ->
      React.DOM.div
        className: 'col-md-4'
        React.DOM.div
          className: "panel panel-#{ @props.type } fable-box"
          React.DOM.div
            className: 'panel-heading'
            React.DOM.a
              href: @props.url
              @props.fable.name
            " - #{@props.i18n['views']} #{@props.fable.views || 0} - #{@props.i18n['likes']} #{@props.fable.likes || 0} - #{@props.i18n['comments']} #{@props.comments || 0}"
          React.DOM.div
            className: 'panel-body'
            React.DOM.div
                React.DOM.div
                  className: 'summary-box'
                  if @props.logo_url
                    React.DOM.img
                      className: 'logo-box'
                      src: @props.logo_url
                  @props.fable.summary
              React.DOM.hr null
              React.DOM.a
                href: @props.url
                className: 'btn btn-primary'
                #'View'
                React.DOM.i
                  className: 'fa fa-file-text-o'
              " "
              if @props.logged
                if @state.like
                  React.DOM.a
                    href: '#'
                    className: 'btn btn-danger'
                    onClick: @handleUpdateLikes
                    # 'UnLike'
                    React.DOM.i
                      className: 'fa fa-thumbs-down'
                else
                  React.DOM.a
                    href: '#'
                    className: 'btn btn-info'
                    onClick: @handleUpdateLikes
                    React.DOM.i
                      className: 'fa fa-thumbs-up'
                    # <i class="fa fa-shield"></i>
                    # 'Like'
