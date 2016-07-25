@Comments = React.createClass
  getInitialState: ->
    records: @props.comments
  getDefaultProps: ->
    records: []
  addRecord: (record) ->
    records = React.addons.update(@state.records, { $push: [record] })
    @setState records: records
    @props.handleUpdateComments records
  deleteRecord: (record) ->
    index = @state.records.indexOf record
    records = React.addons.update(@state.records, { $splice: [[index, 1]] })
    @replaceState records: records
    @props.handleUpdateComments records
  updateRecord: (record, data) ->
    index = @state.records.indexOf record
    records = React.addons.update(@state.records, { $splice: [[index, 1, data]] })
    @replaceState records: records
    @props.handleUpdateComments records
  render: ->
    React.DOM.div
      className: 'jumbotron'
      React.DOM.div
        className: 'comments'
        React.DOM.h2
          className: 'title'
          @props.i18n['comments']
          ' '
          React.DOM.i
            className: 'fa fa-comments-o fa-2x'
        if @props.logged
          React.DOM.div
            className: 'row'
            React.createElement RecordForm, i18n: @props.i18n, url_create: "/fables/#{@props.fable_id}/comments", handleNewRecord: @addRecord
        for record in @state.records
          author = getObject(@props.users, record.user_id).email
          React.DOM.div
            className: 'row'
          #console.log "comment: #{record.id} "
          # React.createElement Record, key: record.id, record: record, handleDeleteRecord: @deleteRecord, handleEditRecord: @updateRecord
            React.createElement CommentIndexItem, type: 'default', comment: record, logged: @props.logged, i18n: @props.i18n, author: author, handleUpdateComment: @updateRecord
