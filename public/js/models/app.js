var App = Backbone.Model.extend({
  initialize: function(params) {
    if(params.comments){
      params.comments.fetch();
    }
  }
});