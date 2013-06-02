$(function(){
  $('body').html(new AppView({
    model: new App({comments: new Comments()})
  }).$el);
});
