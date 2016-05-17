@Todo -> class TaskModel
  constructor: () ->
    @tasks = [
      {
        title: '今日とりかかるタスク'
        content: 'これは最初のタスクです'
      }
      {
        title: '明日とりかかるタスク'
        content: 'これは次のタスクです'
      }
    ]
  index: () ->
    $.publish('tasks.loaded', [ @tasks ]);
