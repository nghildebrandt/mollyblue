import cable from 'actioncable'

let consumer

export const createGameSubscription = (gameId, callback) => {
  if (!consumer) {
    consumer = cable.createConsumer()

    let subscription = consumer.subscriptions.create('GameChannel', {
      connected () {
      },
      received (data) {
        console.log('do it')
        callback()
      }
    }) 

    console.log(subscription)
  }
}
