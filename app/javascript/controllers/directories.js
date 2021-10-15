import AppCtrl from './app'

export default class DirectoriesCtrl extends AppCtrl {
  constructor() {
    super()

    const docCards = findAll(".directory-doc-card")

    on("#search-directory", 'input', () => {
      this.search(docCards)
    })
  }

  search(docCards) {
    let term = find("#search-directory").value.toLocaleLowerCase();
    let regex = /(<([^>]+)>)/ig        

    docCards.forEach(card => {
      var result = card.innerHTML.replace(regex, "");
      var city = /(.+)-/.exec(result)[1].trim().toLocaleLowerCase();
      var name = /(.+)\n/.exec(result.trim())[1].toLocaleLowerCase();
      
      if ((name.includes(term) || city.includes(term))) {
        card.style.display = "block";
      } else {
        card.style.display = "none";
      }
    });
  }
}