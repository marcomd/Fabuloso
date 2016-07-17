  @FableShow = React.createClass
    getInitialState: ->
      like: @props.like
      fable: @props.fable
      story_uppercase: false
    handleUppercase: (e) ->
      e.preventDefault()
      if @state.story_uppercase
        @setState story_uppercase: false
      else
        @setState story_uppercase: true
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
          # @setState like: newvalue
          @replaceState fable: data, like: newvalue
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
              "Views #{@props.fable.views || 0} - Likes #{@state.fable.likes || 0} "
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
            React.DOM.div
                React.DOM.a
                  href: '#'
                  className: 'btn btn-info'
                  onClick: @handleUppercase
                  dataToggle: "tooltip"
                  dataPlacement: "top"
                  title: ""
                  dataOriginalTitle: "Clicca per trasformare in maiuscolo"
                  if @state.story_uppercase then 'A > a' else 'a > A'
            React.DOM.div
              className: "story #{if @state.story_uppercase then 'up' else ''}"
              React.DOM.div
                className: 'panel panel-info'
                React.DOM.div
                  className: 'panel-body'
                  @props.fable.story
