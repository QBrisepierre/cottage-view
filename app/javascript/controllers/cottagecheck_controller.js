import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cottagenew"
let occupancy = 0
let bathroom = 0
let bed = 0
let bedroom = 0

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
    "checkBathroom",
    "checkBed",
    "checkBedroom",
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
    occupancy++
    this.occupancyCounterTarget.innerText = occupancy
    this.checkOccupancyTarget.value = occupancy
    console.log(this.checkOccupancyTarget.value)
  }
  downOccupancy(){
    occupancy--
    this.occupancyCounterTarget.innerText = occupancy
    this.checkOccupancyTarget.value = occupancy
    console.log(this.checkOccupancyTarget.value)
  }

  upBathroom(){
    bathroom++
    this.bathroomCounterTarget.innerText = bathroom
    this.checkBathroomTarget.value = bathroom
    console.log(this.checkBathroomTarget.value)
  }
  downBathroom(){
    bathroom--
    this.bathroomCounterTarget.innerText = bathroom
    this.checkBathroomTarget.value = bathroom
    console.log(this.checkBathroomTarget.value)
  }

  upBed(){
    bed++
    this.bedCounterTarget.innerText = bed
    this.checkBedTarget.value = bed
    console.log(this.checkBedTarget.value)
  }
  downBed(){
    bed--
    this.bedCounterTarget.innerText = bed
    this.checkBedTarget.value = bed
    console.log(this.checkBedTarget.value)
  }

  upBedroom(){
    bedroom++
    this.bedroomCounterTarget.innerText = bedroom
    this.checkBedroomTarget.value = bedroom
    console.log(this.checkBedroomTarget.value)
  }
  downBedroom(){
    bedroom--
    this.bedroomCounterTarget.innerText = bedroom
    this.checkBedroomTarget.value = bedroom
    console.log(this.checkBedroomTarget.value)
  }

}
