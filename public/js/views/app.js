var AppView = Backbone.View.extend({
  initialize: function(params) {
    this.model.get('comments').on('change add remove', this.render, this);
  },
  render: function() {
    var comments = this.model.get('comments');
    return this.$el.html(comments.map(function(comment) {
      var commentView = new CommentView({model: comment}).render();
      return commentView;
    }));
  }
});