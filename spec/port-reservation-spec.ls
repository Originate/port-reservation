require! {
  'chai' : {expect}
  'nitroglycerin' : N
  '../dist/port-reservation'
}


describe 'port-reservation', ->

  describe 'base-port', (...) ->

    context 'no base port configured', (...) ->

      it 'starts at port 8000', (done) ->
        port-reservation.get-port N (port) ->
          expect(port).to.equal 8000
          done!


    context 'base port configured', (...) ->

      it 'starts at the given port', (done) ->
        port-reservation.base-port = 4000
        port-reservation.get-port N (port) ->
          expect(port).to.equal 4000
          done!



  describe 'get-port', (...) ->

    it 'returns consecutive ports', (done) ->
      port-reservation.get-port N (port1) ->
        port-reservation.get-port N (port2) ->
          expect(port1).to.not.equal port2
          done!
