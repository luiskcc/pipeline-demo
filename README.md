# README

* RAILS VERSION: 7.0.5

* It's a salespipeline that uses AJAX to fetch the data in real time 
and update the stage of the Lead as it is dragged and dropped through the different stages. 

- MODEL: Add stage column to the Lead db table rails g migration AddStageToLeads stage:string
- VIEW: from index.html.erb
- STYLE.CSS: pipeline.css
- JS: pipeline_controller.js
- ROUTES:   resources :leads do
  member do
  put 'update_stage'
  end
  end
- CONTROLLER ACTIONS: update_stage 
