import { Controller } from "stimulus"

export default class extends Controller {
  static targets = []

  connect () {
    this.loadBoard()
  }

  loadBoard () {
    fetch('/boards/2')
      .then(response => response.text())
      .then(html => this.element.innerHTML = html)
  }
}
