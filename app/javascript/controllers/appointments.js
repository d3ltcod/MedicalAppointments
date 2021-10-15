import AppCtrl from './app'

export default class AppointmentsCtrl extends AppCtrl {
  constructor() {
    super()
  }

  checkNumberFiles() {
    let inputtImages = find("#input-images-new-appointment")
    let submitButton = find("#submit-new-appointment")

    if(inputtImages.files.length === 3) {
      submitButton.disabled = false;
    } else {
      alert("Please, select 3 images.");
      submitButton.disabled = true;
    } 
  }
}