// import your packages here
import { fetchData } from "./modules/TheDataMiner.js";

(() => {
    // stub * just a place for non-component-specific stuff
    console.log('loaded');
    
    function popErrorBox(message) {
        alert("Something has gone horribly, horribly wrong");
    }

    function handleDataSet(data) {
        let userSection = document.querySelector('.user-section'),
            userTemplate = document.querySelector('#user-template').content;

        for (let user in data) {
            let currentUser = userTemplate.cloneNode(true),
                currentUserText = currentUser.querySelector('.user').children;

            currentUserText[1].src = `images/${data[user].Image}`;
            currentUserText[2].textContent = data[user].Name;
            currentUserText[3].textContent = data[user].Description;

            // add this new user to the view
            userSection.appendChild(currentUser);
        }

    }

    function retrieveProjectInfo() {
        // test for an ID
        // check for an id and if there isnt one then dont try the fetch because it will break the PHP
        if (!event.target.id) { return }

        fetchData(`./includes/index.php?id=${event.target.id}`).then(data => console.log(data)).catch(err => console.log(err));
    }

    function renderPortfolioThumbnails(thumbs) {
        let userSection = document.querySelector('.user-section'),
            userTemplate = document.querySelector('#user-template').content;

        for (let user in thumbs) {
            let currentUser = userTemplate.cloneNode(true),
                currentUserText = currentUser.querySelector('.user').children;

            currentUserText[1].src = `images/${thumbs[user].Image}`;
            currentUserText[1].id = thumbs[user].id;
            currentUserText[2].textContent = thumbs[user].Name;
            currentUserText[3].textContent = thumbs[user].Description;
            
            // add this new user to the view
            userSection.appendChild(currentUser);
        }

        userSection.addEventListener("click", retrieveProjectInfo);
    }
        
    fetchData("./includes/index.php").then(data => renderPortfolioThumbnails(data)).catch(err => console.log(err));
})();