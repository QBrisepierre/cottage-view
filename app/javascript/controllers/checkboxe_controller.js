import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="checkboxe"
const selected = []
export default class extends Controller {
  static targets = ["icon", "col"]
  fire() {
    console.log(event)
    this.colTarget.classList.toggle("border-black")
    if (selected.includes(event.currentTarget.innerText)) {
      const index = selected.indexOf(event.currentTarget.innerText)
      selected.splice(index, 1)
    }else {
      selected.push(event.currentTarget.innerText)
    }
    console.log(selected)
  }
  connect() {
    
  }
}
