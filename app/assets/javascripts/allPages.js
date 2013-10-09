$.ajaxSetup({
  cache: false
});



function submitFormPost(theForm, theFunction ) {
  $.post(theForm.action, $("#" + theForm.id).serialize(),theFunction,'html');
}

function setEditHolder(theTarget) {
  target = $(theTarget)
  theTop = Math.max(0,($(window).height()/2) - (target.outerHeight()/2));
  theTop = theTop + $(window).scrollTop();
  theLeft = Math.max(0,($(window).width()/2) - (target.outerWidth()/2));
  theLeft = theLeft + $(window).scrollLeft();
  target.css("top", theTop);
  target.css("left", theLeft);
  target.fadeIn();
}

function fillEditHolder(theTarget, theURL) {
  $(theTarget).fadeOut("fast",function() {
    $.get(theURL,
      function(data, statusText, xhrObject) {
        target = $(theTarget)
        target.html(data);
        setEditHolder(theTarget);
      });
    });
  return false;
}

function fillAjaxHolder(theTarget, theURL) {
  $.get(theURL,
    function(data, statusText, xhrObject) {
      $(theTarget).html(data);
    });
  return false;
}

function writeAjaxHolder(theTarget, theContent) {
  $(theTarget).html(theContent);
  return false;
}


function ajaxifyDeleteLink(theLink,theTarget) {
  $(theLink).click(function(event){
    event.preventDefault();
    $.post(event.target,
      "_method=DELETE",
      function(data) {
        writeAjaxHolder(theTarget,data);
      },
      'html');
  });
}

function ajaxifyLink(theLink,theTarget) {
  $(theLink).click(function(event){
    event.preventDefault(); // Prevent link from following its href
    fillEditHolder(theTarget,event.target);
    return false;
  });
}

function ajaxifyClose(theLink,theTarget) {
  $(theLink).click(function(event){
    event.preventDefault(); // Prevent link from following its href
    $(theTarget).fadeOut();
    return false;
  });
}

function ajaxifySubmit(theButton,theTarget) {
  $(theButton).click(function(event){
    event.preventDefault(); // Prevent link from following its href
    submitFormPost(event.target.form,
      function(data) {
        writeAjaxHolder(theTarget,data);
        $('#editHolder').fadeOut();
      }
      );
  });
}

