import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="formswipe"
export default class extends Controller {
  connect() {
    console.log("hello")
  }
}
