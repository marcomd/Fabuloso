  @Records = React.createClass
    getInitialState: ->
      records: @props.data
      likes: @props.likes
    getDefaultProps: ->
      records: []
    addRecord: (record) ->
      records = React.addons.update(@state.records, { $push: [record] })
      @setState records: records
    deleteRecord: (record) ->
      index = @state.records.indexOf record
      records = React.addons.update(@state.records, { $splice: [[index, 1]] })
      @replaceState records: records
    updateRecord: (record, data) ->
      index = @state.records.indexOf record
      records = React.addons.update(@state.records, { $splice: [[index, 1, data]] })
      @replaceState records: records, likes: @state.likes
    render: ->
      React.DOM.div
        className: 'records'
        React.DOM.h2
          className: 'title'
          @props.i18n['plural_name']
        React.DOM.div
          className: 'row'
        for record in @state.records
          index = @state.likes.indexOf record.id
          if index == -1
            like = false
          else
            like = true
          console.log "fable: #{record.id} index: #{index} like: #{like}"
          React.createElement FableIndexItem, type: 'default', fable: record, like: like, logged: @props.logged, url: "/fables/#{record.id}", url_update_likes: "/fables/#{record.id}/update_likes", i18n: @props.i18n, handleUpdateLikes: @updateRecord
          # React.createElement Record, key: record.id, record: record, handleDeleteRecord: @deleteRecord, handleEditRecord: @updateRecord
