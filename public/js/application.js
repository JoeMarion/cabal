$(document).ready(function() {
  login();
  createGroup();
});

function login() {
  $('.loginbox').hide();
  $('.login').click(function() {
    $('.loginbox').slideToggle(200);
    $('.createbox').hide();
  });
};

function createGroup() {
  $('.createbox').hide();
  $('.create').click(function() {
    $('.createbox').slideToggle(200);
    $('.loginbox').hide();
  });
  $('.signup').click(function() {
    $('.createbox').slideToggle(200);
    $('.loginbox').hide();
  });
};

