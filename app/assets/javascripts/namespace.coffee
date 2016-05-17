# 以下を参考に名前空間「Todo」定義
# http://qiita.com/imk2o/items/737da3def20849363c30
@Todo = (fn) ->
  klass = fn()
  @Todo[klass.name] = klass

