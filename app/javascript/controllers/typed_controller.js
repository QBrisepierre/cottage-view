import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed"
export default class extends Controller {
  static values = { sentences: Array }
  connect() {
    const options = {strings: this.sentencesValue, typeSpeed: 80, loop: true, backDelay: 4000,  backSpeed: 70}
    new Typed(this.element, options)
  }
}
