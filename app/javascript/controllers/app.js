export default class AppCtrl {

  constructor() {
    this.notifications()
  }

  back() {
    window.history.back()
  }

  signOut(id) {
    ajax('/users/sign_out', { params: {id: id}, options: { method: 'DELETE' }})
  }

  notifications() {
    setTimeout(() => {
      findAll('.notification').forEach(el => {
        el.style.visibility = "hidden";
      })
    }, 1500)
  }
}