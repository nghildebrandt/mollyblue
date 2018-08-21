import { Controller } from 'stimulus'

export default class extends Controller {
  static targets = []

  connect () {
  }

  click (a) {
    console.log(this, a)
  }
}
