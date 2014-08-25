UserDao = require '../model/User'

module.exports =
  save: (user, cb)->
    UserDao.save user, (uid)->
      cb uid

  find: (uid, cb)->
    UserDao.find uid, (user)->
      cb user