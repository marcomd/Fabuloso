  @Record = React.createClass
    getInitialState: ->
      edit: false
    handleToggle: (e) ->
      e.preventDefault()
      @setState edit: !@state.edit
    handleDelete: (e) ->
      e.preventDefault()
      # yeah... jQuery doesn't have a $.delete shortcut method
      $.ajax
        method: 'DELETE'
        url: "/records/#{ @props.record.id }"
        dataType: 'JSON'
        success: () =>
          @props.handleDeleteRecord @props.record
    handleEdit: (e) ->
      e.preventDefault()
      data =
        name: @refs.name.value
        summary: @refs.summary.value
      # jQuery doesn't have a $.put shortcut method either
      $.ajax
        method: 'PUT'
        url: "/records/#{ @props.record.id }"
        dataType: 'JSON'
        data:
          record: data
        success: (data) =>
          @setState edit: false
          @props.handleEditRecord @props.record, data
    recordRow: ->
      React.DOM.tr null,
        React.DOM.td null, @props.record.name
        React.DOM.td null, @props.record.summary
        React.DOM.td null,
          React.DOM.a
            className: 'btn btn-default'
            onClick: @handleToggle
            'Edit'
          React.DOM.a
            className: 'btn btn-danger'
            onClick: @handleDelete
            'Delete'
    recordForm: ->
      React.DOM.tr null,
        React.DOM.td null,
          React.DOM.input
            className: 'form-control'
            type: 'text'
            defaultValue: @props.record.name
            ref: 'name'
        React.DOM.td null,
          React.DOM.input
            className: 'form-control'
            type: 'text'
            defaultValue: @props.record.summary
            ref: 'summary'

        React.DOM.td null,
          React.DOM.a
            className: 'btn btn-default'
            onClick: @handleEdit
            'Update'
          React.DOM.a
            className: 'btn btn-danger'
            onClick: @handleToggle
            'Cancel'
    render: ->
      if @state.edit
        @recordForm()
      else
        @recordRow()
