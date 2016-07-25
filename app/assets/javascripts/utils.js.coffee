@amountFormat = (amount) ->
  '€ ' + Number(amount).toLocaleString()

@dateFormat = (date) ->
  # new Date(date).toLocaleFormat()
  new Date(date).toLocaleString()

@getCommentsCount = (fable_comments, id) ->
  for comment in fable_comments
    if comment.fable_id == id
      return comment.count
  return 0

@getObject = (records, id) ->
  for record in records
    if record.id == id
      return record
  return null
