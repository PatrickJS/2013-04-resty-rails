var CommentView = Backbone.View.extend ({
  initialize: function(){
    this.model.on('change', this.render, this);
    this.render();
  },
  tagName: 'ul',
  template: _.template('<li><%= id %> : <%= content %> <%= created_at %> </li>'),
  render: function() {
    var html = this.template(this.model.attributes);

    return this.$el.html(html);
  }
});