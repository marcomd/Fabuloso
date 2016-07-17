  @SearchBox = React.createClass
    getInitialState: ->
      search: ''
    handleChange: (e) ->
      name = e.target.name
      @setState "#{ name }": e.target.value
    valid: ->
      @state.search
    handleSubmit: (e) ->
      e.preventDefault()
      $.post '', { record: @state }, (data) =>
        @props.handleNewRecord data
        @setState @getInitialState()
      , 'JSON'
    render: ->
      React.DOM.div
        className: 'col-md-4'
        React.DOM.div
          className: "panel panel-#{ @props.type }"
          React.DOM.div
            className: 'panel-heading'
            @props.text
          React.DOM.div
            className: 'panel-body'
            React.DOM.form
              className: 'form-inline'
              onSubmit: @handleSubmit
              React.DOM.div
                className: 'form-group'
                React.DOM.input
                  type: 'text'
                  className: 'form-control'
                  placeholder: 'Date'
                  name: 'date'
                  value: @state.date
                  onChange: @handleChange
              React.DOM.div
                className: 'form-group'
                React.DOM.input
                  type: 'text'
                  className: 'form-control'
                  placeholder: 'Title'
                  name: 'title'
                  value: @state.title
                  onChange: @handleChange
              React.DOM.button
                type: 'submit'
                className: 'btn btn-primary'
                disabled: !@valid()
                'Create record'
