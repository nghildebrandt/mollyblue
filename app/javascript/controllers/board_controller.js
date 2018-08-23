import { Controller } from "stimulus"

import { createGameSubscription } from '../cables/game.js'

export default class extends Controller {
  static targets = []

  connect () {
    let gameId = document.getElementById('game_id').value

    this.loadBoard(gameId)

    createGameSubscription(gameId, this.loadBoard.bind(this))
  }

  loadBoard (gameId) {
    fetch(`/boards/${gameId}`)
      .then(response => response.text())
      .then(html => this.element.innerHTML = html)
  }
}
