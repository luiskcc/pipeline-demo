import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pipeline"
export default class extends Controller {
  connect() {

    const list_items = document.querySelectorAll('.list-item');
    const lists = document.querySelectorAll('.list');

    let draggedItem = null;

    for (let i = 0; i < list_items.length; i++) {
      const item = list_items[i]


      item.addEventListener('dragstart', function (){
        draggedItem = item;
        setTimeout(function () {
          item.style.display = "none";
        }, 0)
      });

      item.addEventListener('dragend', function(){
        setTimeout(function() {
          draggedItem.style.display = 'block';
          draggedItem = null;
        }, 0);
      });

      for (let j = 0; j < lists.length;  j ++){
        const  list = lists[j];

        list.addEventListener('dragover', function (e) {
          e.preventDefault();
        });

        list.addEventListener('dragenter', function (e) {
          e.preventDefault();
        })

        list.addEventListener('drop', function (e) {
          const leadId = draggedItem.dataset.leadId;
          const stageId = list.dataset.stageId;


          this.append(draggedItem);

          updateLeadStage(leadId, stageId);

        });

      }
    }

    function updateLeadStage(leadId, stageId){
      const url = `/leads/${leadId}/update_stage`;
      const csrfToken = document.querySelector('meta[name="csrf-token"]').content;

      fetch(url, {
        method: 'PUT',
        headers: {
          'Content-Type': 'application/json',
          'X-CSRF-Token': csrfToken
        },
        body: JSON.stringify({stage_id: stageId})
      })

          .then(response =>{
            if (response.ok) {
              console.log(`Lead ${leadId} stage updated to ${stageId}`);
            } else{
              console.error(`Failed to update lead ${leadId} stage`;)
            }
          })
          .catch(error => {
            console.error(error);
          })
      
    }
    


  }
}