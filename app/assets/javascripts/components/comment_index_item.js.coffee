  @CommentIndexItem = React.createClass
    getInitialState: ->
      comment: @props.comment
    render: ->
      React.DOM.div
        className: 'col-md-8'
        React.DOM.div
          className: "panel panel-#{ @props.type } comment-box"
          React.DOM.div
            className: 'panel-heading'
            React.DOM.b null, @props.author.replace /@.+$/, ''
            ' '
            dateFormat @props.comment.created_at
          React.DOM.div
            className: 'panel-body'
            @props.comment.description
            # if @props.logged
