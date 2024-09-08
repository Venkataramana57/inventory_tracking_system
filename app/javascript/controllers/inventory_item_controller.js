import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="inventory-item"
export default class extends Controller {
  reset() {
    this.element.reset()
  }
}
