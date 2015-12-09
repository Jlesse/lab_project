$(document).ready(function(){
  $("#procedure_button").click(function(event){
    event.preventDefault();
    $("#procedure_input").append('<textarea name="experiment[procedures][]" id="experiment_procedure"></textarea>');
  });
});
