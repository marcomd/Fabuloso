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
          console.log "Ok: #{data}"
          @setState like: newvalue
          @props.handleUpdateLikes @props.fable, data
        error: (xhr, status, err) =>
          console.error @props.url_update_likes, status, err
    render: ->
      React.DOM.div
        className: 'col-md-4'
        React.DOM.div
          className: "panel panel-#{ @props.type }"
          React.DOM.div
            className: 'panel-heading'
            "#{@props.fable.name} - Views #{@props.fable.views || 0} - Likes #{@props.fable.likes || 0}"
          React.DOM.div
            className: 'panel-body'
            React.DOM.div
              React.DOM.p
                @props.fable.summary
              React.DOM.hr null
              React.DOM.a
                href: @props.url
                className: 'btn btn-primary'
                'View'
              if @state.like
                React.DOM.a
                  href: '#'
                  className: 'btn btn-danger'
                  onClick: @handleUpdateLikes
                  'UnLike'
              else
                React.DOM.a
                  href: '#'
                  className: 'btn btn-default'
                  onClick: @handleUpdateLikes
                  'Like'
