import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["button"]

  reset() {
    this.element.reset() // referencia al formulario
    this.buttonTarget.disabled = false
  }
}
