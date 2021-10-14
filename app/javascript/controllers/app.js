export default class AppCtrl {
  back() {
    window.history.back()
  }

  signOut(id) {
    ajax('/users/sign_out', { params: {id: id}, options: { method: 'DELETE' }})
  }
}