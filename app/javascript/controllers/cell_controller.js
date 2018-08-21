import { Controller } from 'stimulus'

export default class extends Controller {
  static targets = []

  connect () {
  }

  click (event) {
    let coord = event.target.dataset.coordinates
    console.log(coord)
  }
}
