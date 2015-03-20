// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function appendNumber(element, number){
  $(".operand").text($(".operand").text().trim() + number);
};

function backspace(element){
  var existingText = $(".operand").text();
  if (existingText === "0"){
    return;
  }else if(existingText.length === 1){
    $(".operand").text("0");  
  }else{
    $(".operand").text(existingText.substring(0, existingText.length - 1));
  }
};

$(document).ready(function(){
  $(".add-form").submit(function(){
      var operation = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operation").val("add");
      var operand = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operand").val($(".operand").text());
      $(".add-form").append($(operation));
      $(".add-form").append($(operand));
    });

  $(".subtract-form").submit(function(){
      var operation = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operation").val("subtract");
      var operand = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operand").val($(".operand").text());
      $(".subtract-form").append($(operation));
      $(".subtract-form").append($(operand));
    });

  $(".divide-form").submit(function(){
      var operation = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operation").val("divide");
      var operand = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operand").val($(".operand").text());
      $(".divide-form").append($(operation));
      $(".divide-form").append($(operand));
    });

  $(".multiply-form").submit(function(){
      var operation = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operation").val("multiply");
      var operand = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operand").val($(".operand").text());
      $(".multiply-form").append($(operation));
      $(".multiply-form").append($(operand));
    });

  $(".multiply-form").submit(function(){
      var operation = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operation").val("multiply");
      var operand = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operand").val($(".operand").text());
      $(".multiply-form").append($(operation));
      $(".multiply-form").append($(operand));
    });

  $(".cancel-form").submit(function(){
      var operation = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operation").val("cancel");
      var operand = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operand").val($(".operand").text());
      $(".cancel-form").append($(operation));
      $(".cancel-form").append($(operand));
    });

  $(".negate-form").submit(function(){
      var operation = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operation").val("negative");
      var operand = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operand").val($(".operand").text());
      $(".negate-form").append($(operation));
      $(".negate-form").append($(operand));
    });

  $(".square-form").submit(function(){
      var operation = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operation").val("square");
      var operand = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operand").val($(".operand").text());
      $(".square-form").append($(operation));
      $(".square-form").append($(operand));
    });

  $(".sqrt-form").submit(function(){
      var operation = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operation").val("sqrt");
      var operand = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operand").val($(".operand").text());
      $(".sqrt-form").append($(operation));
      $(".sqrt-form").append($(operand));
    });

  $(".cube-form").submit(function(){
      var operation = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operation").val("cube");
      var operand = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operand").val($(".operand").text());
      $(".cube-form").append($(operation));
      $(".cube-form").append($(operand));
    });

  $(".cbrt-form").submit(function(){
      var operation = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operation").val("cbrt");
      var operand = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operand").val($(".operand").text());
      $(".cbrt-form").append($(operation));
      $(".cbrt-form").append($(operand));
    });

  $(".repeat-form").submit(function(){
      var operation = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operation").val("repeat");
      var operand = $("<input>")
               .attr("type", "hidden")
               .attr("name", "operand").val($(".operand").text());
      $(".repeat-form").append($(operation));
      $(".repeat-form").append($(operand));
    });
});