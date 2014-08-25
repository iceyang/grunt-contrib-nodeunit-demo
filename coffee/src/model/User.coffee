module.exports = 
  save: (user, cb)->
    uid = 123
    cb uid
    
  find: (uid, cb)->
    user = 
      uid: 123
      name: 'ice'
    cb user