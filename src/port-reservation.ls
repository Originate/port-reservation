require! {
  'portfinder'
}


port-reservation =

  base-port: 8000


  get-port: (done) ->
    portfinder
      ..base-port = port-reservation.base-port
      ..get-port (err, port) ->
        port-reservation.base-port := port + 1
        done err, port



module.exports = port-reservation
