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
        className: 'show'
        React.DOM.img
          src: @props.logo_url
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
              "#{@props.i18n['views']} #{@state.fable.views || 0} - #{@props.i18n['likes']} #{@state.fable.likes || 0} "
              if @state.like
                React.DOM.a
                  href: '#'
                  className: 'btn btn-danger'
                  onClick: @handleUpdateLikes
                  #'UnLike'
                  React.DOM.i
                    className: 'fa fa-thumbs-down'
              else
                React.DOM.a
                  href: '#'
                  className: 'btn btn-info'
                  onClick: @handleUpdateLikes
                  #'Like'
                  React.DOM.i
                    className: 'fa fa-thumbs-up'
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
                  dangerouslySetInnerHTML: { __html: @props.fable.story }
                  # @props.fable.story
