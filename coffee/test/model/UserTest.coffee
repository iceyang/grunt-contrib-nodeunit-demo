User = require '../../src/model/User'

module.exports = 
  "save user test": (test)->
    test.expect 1
    user = 
      name: 'ice'
    User.save user, (uid)->
      test.equals uid, 123
      do test.done

  "find user test": (test)->
    test.expect 1
    uid = 123
    User.find uid, (user)->
      test.equals user.name, 'ice'
      do test.done