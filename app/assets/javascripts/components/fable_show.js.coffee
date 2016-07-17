  @FableShow = React.createClass
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
        error: (xhr, status, err) =>
          console.error @props.url_update_likes, status, err
    render: ->
      React.DOM.div
        className: 'container'
        React.DOM.div
          className: 'jumbotron'
          React.DOM.h2 null, @props.fable.name
          React.DOM.div
            className: 'row'
            React.DOM.div
              className: 'col-lg-8'
              React.DOM.p null, @props.fable.summary
            React.DOM.div
              className: 'col-lg-4'
              "Views #{@props.fable.views || 0} - Likes #{@props.fable.likes || 0} "
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
        React.DOM.div
          className: 'row'
          React.DOM.div
            className: 'col-lg-12'
            React.DOM.p
              className: 'story'
              @props.fable.story
