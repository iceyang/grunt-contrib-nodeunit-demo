UserService = require '../../src/service/UserService'

module.exports = 
  "UserService-save-test": (test)->
    test.expect 1
    user = 
      name: 'ice'
    UserService.save user, (uid)->
      test.equals uid, 123
      do test.done

  "UserService-find-test": (test)->
    test.expect 1
    uid = 123
    UserService.find uid, (user)->
      test.equals user.name, 'ice'
      do test.done