import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="description"
export default class extends Controller {
  static targets = ["modal"]
  openModal() {
    console.log(this.modalTarget)
  }
}
