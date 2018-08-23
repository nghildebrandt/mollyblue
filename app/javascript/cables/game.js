import cable from 'actioncable'

let consumer

export const createGameSubscription = (gameId, callback) => {
  if (!consumer) {
    consumer = cable.createConsumer()

    let subscription = consumer.subscriptions.create('GameChannel', {
      id: gameId,
      connected () {
        console.log("connected")
      },
      received (data) {
        console.log(data)
      }
    }) 

    console.log(subscription)
  }
}
