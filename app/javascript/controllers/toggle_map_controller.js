import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["map", "cards"]
  connect() {

  console.log("hello")

  }
  toggle(event){
   const header = document.getElementById("available-equipment")
   if (header != undefined) {
     header.classList.toggle("d-none")
   }

   console.log(event.currentTarget)
    if (this.mapTarget.style.visibility === "hidden"){
      this.mapTarget.style.visibility = "visible"
      this.mapTarget.style.height = "600px"
      this.cardsTarget.style.display = "none"
      event.currentTarget.innerText = "show list"
    } else if (this.mapTarget.style.visibility === "visible"){
      this.mapTarget.style.visibility = "hidden"
      this.mapTarget.style.height = "0px"
      this.cardsTarget.style.display = "grid"
      event.currentTarget.innerText = "show map"
    }
  }

}
