import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cottagenew"
let occupancy = 1
let bathroom = 1
let bed = 1
let bedroom = 1

function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}

function updateTextInput(val) {
  document.getElementById('textInput').value=val;
}

export default class extends Controller {
  static targets = [
    "stepOne",
    "buttonOne",

    "checkAddress",
    "stepAddress",
    "buttonAddress",

    "checkOccupancy",
    "occupancyBorderUp",
    "occupancyBorderDown",
    "checkBathroom",
    "bathroomBorderUp",
    "bathroomBorderDown",
    "checkBed",
    "bedBorderUp",
    "bedBorderDown",
    "checkBedroom",
    "bedroomBorderDown",
    "bedroomBorderUp",
    "stepRooms",
    "buttonRooms",

    "stepTwo",
    "buttonTwo",

    "stepEquipments",
    "buttonEquipments",

    "checkPhotos",
    "stepPhotos",
    "buttonPhotos",

    "checkName",
    "stepName",
    "buttonName",

    "stepDescription",
    "checkDescription",
    "buttonDescription",

    "stepPrice",
    "checkPrice",
    "buttonPrice",

    "stepThree",
    "buttonThree",

    "stepFinish",

    "occupancyCounter",
    "bathroomCounter",
    "bedCounter",
    "bedroomCounter",

    "overflow",

    "progressBarOne",
    "progressBarTwo",
    "progressBarThree",

    "price",
  ]

  toStepAddress() {
    this.stepOneTarget.classList.remove("fade-in")
    this.stepOneTarget.classList.add("fade-out")
    sleep(1000).then(() => {
      this.progressBarOneTarget.style.width = "33%"
      this.stepOneTarget.classList.add("d-none")
      this.stepAddressTarget.classList.remove("d-none")
      this.buttonOneTarget.classList.add("d-none")
      this.buttonAddressTarget.classList.remove("d-none")
    })
  }

  toStepRooms(){
    if(this.checkAddressTarget.value) {
      this.stepAddressTarget.classList.remove("fade-in")
      this.stepAddressTarget.classList.add("fade-out")
      sleep(1000).then(() => {
        this.progressBarOneTarget.style.width = "66%"
        this.stepAddressTarget.classList.add("d-none")
        this.stepRoomsTarget.classList.remove("d-none")
        this.buttonAddressTarget.classList.add("d-none")
        this.buttonRoomsTarget.classList.remove("d-none")
      })
    }
  }

  toStepTwo(){
    if (this.checkOccupancyTarget.value != 0 && this.checkBathroomTarget.value != 0 && this.checkBedTarget.value != 0 &&  this.checkBedroomTarget.value) {
      this.stepRoomsTarget.classList.remove("fade-in")
      this.stepRoomsTarget.classList.add("fade-out")
      sleep(1000).then(() => {
        this.progressBarOneTarget.style.width = "100%"
        this.stepRoomsTarget.classList.add("d-none")
        this.stepTwoTarget.classList.remove("d-none")
        this.buttonRoomsTarget.classList.add("d-none")
        this.buttonTwoTarget.classList.remove("d-none")
      })
    }
  }

  toStepEquipments(){
      this.stepTwoTarget.classList.remove("fade-in")
      this.stepTwoTarget.classList.add("fade-out")
      sleep(1000).then(() => {
        this.progressBarTwoTarget.style.width = "20%"
        this.stepTwoTarget.classList.add("d-none")
        this.stepEquipmentsTarget.classList.remove("d-none")
        this.buttonTwoTarget.classList.add("d-none")
        this.buttonEquipmentsTarget.classList.remove("d-none")
        this.overflowTarget.classList.remove("overflow-hidden")
      })
  }

  toStepPhotos(){
    this.stepEquipmentsTarget.classList.remove("fade-in")
    this.stepEquipmentsTarget.classList.add("fade-out")
    sleep(1000).then(() => {
      this.progressBarTwoTarget.style.width = "40%"
      this.stepEquipmentsTarget.classList.add("d-none")
      this.stepPhotosTarget.classList.remove("d-none")
      this.buttonEquipmentsTarget.classList.add("d-none")
      this.buttonPhotosTarget.classList.remove("d-none")
      this.overflowTarget.classList.add("overflow-hidden")
    })
  }

  toStepName(){
    if (this.checkPhotosTarget.files.length >= 5){
      this.stepPhotosTarget.classList.remove("fade-in")
      this.stepPhotosTarget.classList.add("fade-out")
      sleep(1000).then(() => {
        this.progressBarTwoTarget.style.width = "60%"
        this.stepPhotosTarget.classList.add("d-none")
        this.stepNameTarget.classList.remove("d-none")
        this.buttonPhotosTarget.classList.add("d-none")
        this.buttonNameTarget.classList.remove("d-none")
      })
    }
  }

  toStepDescription() {
    if (this.checkNameTarget.value.length >= 5) {
      this.stepNameTarget.classList.remove("fade-in")
      this.stepNameTarget.classList.add("fade-out")
      sleep(1000).then(() => {
        this.progressBarTwoTarget.style.width = "80%"
        this.stepNameTarget.classList.add("d-none")
        this.stepDescriptionTarget.classList.remove("d-none")
        this.buttonNameTarget.classList.add("d-none")
        this.buttonDescriptionTarget.classList.remove("d-none")
      })
    }
  }

  toStepThree(){
    if (this.checkDescriptionTarget.value.length >= 60) {
      this.stepDescriptionTarget.classList.remove("fade-in")
      this.stepDescriptionTarget.classList.add("fade-out")
      sleep(1000).then(() => {
        this.progressBarTwoTarget.style.width = "100%"
        this.stepDescriptionTarget.classList.add("d-none")
        this.stepThreeTarget.classList.remove("d-none")
        this.buttonDescriptionTarget.classList.add("d-none")
        this.buttonThreeTarget.classList.remove("d-none")
      })
    }
  }

  toStepPrice() {
    this.stepThreeTarget.classList.remove("fade-in")
    this.stepThreeTarget.classList.add("fade-out")
    sleep(1000).then(() => {
      this.progressBarThreeTarget.style.width = "50%"
      this.stepThreeTarget.classList.add("d-none")
      this.stepPriceTarget.classList.remove("d-none")
      this.buttonThreeTarget.classList.add("d-none")
      this.buttonPriceTarget.classList.remove("d-none")
    })
  }

  priceBackspace(){
    if (this.checkPriceTarget.value.length === 1) {
      if (event.keyCode === 8) {
        event.preventDefault()
      }
    } else if (this.checkPriceTarget.value.length === 0) {
      this.checkPriceTarget.value = "€"
    }
  }

  toStepFinish() {
    if (this.checkPriceTarget.value >= 20) {
      this.priceTarget.value = this.checkPriceTarget.value
      this.stepPriceTarget.classList.remove("fade-in")
      this.stepPriceTarget.classList.add("fade-out")
      sleep(1000).then(() => {
        this.progressBarThreeTarget.style.width = "100%"
        this.stepPriceTarget.classList.add("d-none")
        this.stepFinishTarget.classList.remove("d-none")
        this.buttonPriceTarget.classList.add("d-none")
      })
    }
  }

  
  upOccupancy(){
    if (this.checkOccupancyTarget.value === "9") {
      occupancy++
      this.occupancyCounterTarget.innerText = occupancy
      this.checkOccupancyTarget.value = occupancy
      this.occupancyBorderUpTarget.classList.remove("border-secondary", "hover-count")
      this.occupancyBorderUpTarget.style.cursor = "not-allowed"
    } else if (this.checkOccupancyTarget.value === "10") {
      console.log("Stop")
    } else {
      this.occupancyBorderUpTarget.classList.add("border-secondary", "hover-count")
      this.occupancyBorderUpTarget.style.cursor = "pointer"

      this.occupancyBorderDownTarget.classList.add("border-secondary", "hover-count")
      this.occupancyBorderDownTarget.style.cursor = "pointer"
      occupancy++
      this.occupancyCounterTarget.innerText = occupancy
      this.checkOccupancyTarget.value = occupancy
    }
    console.log(this.checkOccupancyTarget.value)
  }

  downOccupancy(){
    if (this.checkOccupancyTarget.value === "10") {
      occupancy--
      this.occupancyCounterTarget.innerText = occupancy
      this.checkOccupancyTarget.value = occupancy
      this.occupancyBorderUpTarget.classList.add("border-secondary", "hover-count")
      this.occupancyBorderUpTarget.style.cursor = "pointer"
    } else if (this.checkOccupancyTarget.value === "1") {
      occupancy--
      this.occupancyCounterTarget.innerText = occupancy
      this.checkOccupancyTarget.value = occupancy
      this.occupancyBorderDownTarget.classList.remove("border-secondary", "hover-count")
      this.occupancyBorderDownTarget.style.cursor = "not-allowed"
    } else if (this.checkOccupancyTarget.value === "") {
      console.log("Stop 0")
    } else {
      occupancy--
      this.occupancyCounterTarget.innerText = occupancy
      this.checkOccupancyTarget.value = occupancy
      console.log(this.checkOccupancyTarget.value)
    }
  }

  upBathroom(){
    if (this.checkBathroomTarget.value === "9") {
      bathroom++
      this.bathroomCounterTarget.innerText = bathroom
      this.checkBathroomTarget.value = bathroom
      this.bathroomBorderUpTarget.classList.remove("border-secondary", "hover-count")
      this.bathroomBorderUpTarget.style.cursor = "not-allowed"
    } else if (this.checkBathroomTarget.value === "10") {
      console.log("Stop")
    } else {
      this.bathroomBorderUpTarget.classList.add("border-secondary", "hover-count")
      this.bathroomBorderUpTarget.style.cursor = "pointer"

      this.bathroomBorderDownTarget.classList.add("border-secondary", "hover-count")
      this.bathroomBorderDownTarget.style.cursor = "pointer"
      bathroom++
      this.bathroomCounterTarget.innerText = bathroom
      this.checkBathroomTarget.value = bathroom
    }
    console.log(this.checkBathroomTarget.value)
  }

  downBathroom(){
    if (this.checkBathroomTarget.value === "10") {
      bathroom--
      this.bathroomCounterTarget.innerText = bathroom
      this.checkBathroomTarget.value = bathroom
      this.bathroomBorderUpTarget.classList.add("border-secondary", "hover-count")
      this.bathroomBorderUpTarget.style.cursor = "pointer"
    } else if (this.checkBathroomTarget.value == "1") {
      bathroom--
      this.bathroomCounterTarget.innerText = bathroom
      this.checkBathroomTarget.value = bathroom
      this.bathroomBorderDownTarget.classList.remove("border-secondary", "hover-count")
      this.bathroomBorderDownTarget.style.cursor = "not-allowed"
    } else if (this.checkBathroomTarget.value === "") {
      console.log("Stop 0")
    } else {
      bathroom--
      this.bathroomCounterTarget.innerText = bathroom
      this.checkBathroomTarget.value = bathroom
    }
    console.log(this.checkBathroomTarget.value)
  }

  upBed(){
    if (this.checkBedTarget.value === "9"){
      bed++
      this.bedCounterTarget.innerText = bed
      this.checkBedTarget.value = bed

      this.bedBorderUpTarget.classList.remove("border-secondary", "hover-count")
      this.bedBorderUpTarget.style.cursor = "not-allowed"
    } else if (this.checkBedTarget.value === "10") {
      console.log("Stop")
    } else {
      this.bedBorderUpTarget.classList.add("border-secondary", "hover-count")
      this.bedBorderUpTarget.style.cursor = "pointer"

      this.bedBorderDownTarget.classList.add("border-secondary", "hover-count")
      this.bedBorderDownTarget.style.cursor = "pointer"
      bed++
      this.bedCounterTarget.innerText = bed
      this.checkBedTarget.value = bed
    }
  }
  downBed(){
    if (this.checkBedTarget.value === "10") {
      bed--
      this.bedCounterTarget.innerText = bed
      this.checkBedTarget.value = bed

      this.bedBorderUpTarget.classList.add("border-secondary", "hover-count")
      this.bedBorderUpTarget.style.cursor = "pointer"
    } else if (this.checkBedTarget.value === "1") {
      bed--
      this.bedCounterTarget.innerText = bed
      this.checkBedTarget.value = bed

      this.bedBorderDownTarget.classList.remove("border-secondary", "hover-count")
      this.bedBorderDownTarget.style.cursor = "not-allowed"
    } else if (this.checkBedTarget.value === "") {
      console.log("Stop 0")
    } else {
      bed--
      this.bedCounterTarget.innerText = bed
      this.checkBedTarget.value = bed
    }
  }

  upBedroom(){
    if (this.checkBedroomTarget.value === "9"){
      bedroom++
      this.bedroomCounterTarget.innerText = bedroom
      this.checkBedroomTarget.value = bedroom

      this.bedroomBorderUpTarget.classList.remove("border-secondary", "hover-count")
      this.bedroomBorderUpTarget.style.cursor = "not-allowed"
    } else if (this.checkBedroomTarget.value === "10") {
      console.log("Stop")
    } else {
      this.bedroomBorderUpTarget.classList.add("border-secondary", "hover-count")
      this.bedroomBorderUpTarget.style.cursor = "pointer"

      this.bedroomBorderDownTarget.classList.add("border-secondary", "hover-count")
      this.bedroomBorderDownTarget.style.cursor = "pointer"

      bedroom++
      this.bedroomCounterTarget.innerText = bedroom
      this.checkBedroomTarget.value = bedroom
    }
  }

  downBedroom(){
    if (this.checkBedroomTarget.value === "10") {
      bedroom--
      this.bedroomCounterTarget.innerText = bedroom
      this.checkBedroomTarget.value = bedroom

      this.bedroomBorderUpTarget.classList.add("border-secondary", "hover-count")
      this.bedroomBorderUpTarget.style.cursor = "pointer"
    } else if (this.checkBedroomTarget.value === "1") {
      bedroom--
      this.bedroomCounterTarget.innerText = bedroom
      this.checkBedroomTarget.value = bedroom

      this.bedroomBorderDownTarget.classList.remove("border-secondary", "hover-count")
      this.bedroomBorderDownTarget.style.cursor = "not-allowed"
    } else if (this.checkBedroomTarget.value === "") {
      console.log("Stop 0")
    } else {
      bedroom--
      this.bedroomCounterTarget.innerText = bedroom
      this.checkBedroomTarget.value = bedroom
    }
  }

}
