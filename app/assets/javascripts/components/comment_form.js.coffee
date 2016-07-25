  @RecordForm = React.createClass
    getInitialState: ->
      description: ''
    handleChange: (e) ->
      name = e.target.name
      @setState "#{ name }": e.target.value
    valid: ->
      @state.description
    handleSubmit: (e) ->
      e.preventDefault()
      $.ajax
        method: 'POST'
        url: @props.url_create
        dataType: 'JSON'
        data: { comment: { description: @state.description } }
        success: (data) =>
          #console.log "Ok: #{data}"
          @setState @getInitialState()
          @props.handleNewRecord data
        error: (xhr, status, err) =>
          console.error @props.url_create, status, err
    render: ->
      React.DOM.div
        className: 'col-md-8'
        React.DOM.form
          className: 'form-inline'
          onSubmit: @handleSubmit
          React.DOM.div
            className: 'form-group'
          React.DOM.div
            className: 'form-group'
            React.DOM.input
              type: 'text'
              className: 'form-control'
              placeholder: @props.i18n['comment']
              name: 'description'
              value: @state.description
              onChange: @handleChange
          React.DOM.button
            type: 'submit'
            className: 'btn btn-primary'
            disabled: !@valid()
            React.DOM.i
              className: 'fa fa-comment fa-lg'
        React.DOM.hr null
