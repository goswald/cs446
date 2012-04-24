var guessesLeft = 10;
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);
var number = Math.floor(Math.random()*101);
var theDate = new Date();
var dateTimeVariable = (theDate.getFullYear() + theDate.getMonth() + theDate.getDate() + theDate.getHours() + theDate.getMinutes() + theDate.getSeconds());

$(function() {
  updateScore(guessesLeft);
  populateHighScores(highScores);
});

function addUser(score, name) {
  highScores.push([score, name]);
  highScores.sort();
  highScores.reverse();
  populateHighScores(highScores);
}

function playAgain() {
  number = Math.floor(Math.random()*101);
  guessesLeft = 10;
  updateScore(guessesLeft);
}

function fadeIn() {
  $("h1").fadeIn("fast");
  $("p").fadeIn("fast");
  $("#guessTheNumber").fadeIn("fast");
  $("h2").fadeIn("fast");
}

function fadeOut() {
  $("h1").fadeOut("fast");
  $("p").fadeOut("fast");
  $("#guessTheNumber").fadeOut("fast");
  $("h2").fadeOut("fast");
}

function guessMe() {
  var guesstimate = $("#guess").val();
  if (guessesLeft > 0) {
      if (guesstimate < number) {
        alert("TOO LOW.");
        guessesLeft--;
        updateScore(guessesLeft);
        $("#guess").val("");
      }
      else if (guesstimate > number) {
        alert("TOO HIGH.");
        guessesLeft--;
        updateScore(guessesLeft);
        $("#guess").val("");
      } 
      else {
        fadeOut();
        var username = prompt("YOU WIN.  PLEASE GIVE ME YOUR NAME:", "SURVIVOR-" + dateTimeVariable);
        addUser(guessesLeft, username);
        var y = confirm("PLAY AGAIN?  (PRESS OK.)");
        if (y) {
          fadeIn();
          playAgain();
        }
        else {
          alert("ENJOY YOUR REMAINING DAYS...");
          window.close();
        }
      } 
  }
}

function youLost() {
  fadeOut();
  var x = confirm("YOU LOST.  PRESS OK TO PLAY AGAIN.");
  if (x) {
    fadeIn();
    playAgain();
  }
  else {
    alert("ENJOY DEATH'S ICY EMBRACE...");
    window.close();
  }
}
    
function populateHighScores(scores) {
//  $("div#highScores").text("");
  for (var i = 0; i < scores.length; ++i) {
    $('div#highScores').append("<p>" + scores[i][0] + " " + scores[i][1] + "</p>");
  }
}

function updateScore(score) {
  $('h2#score span#guessesLeft').text(score);
}

$(document).ready(function() {
  alert("NUMBER IS " + number);
  $("#btnGuess").click(function() {
      guessMe();   
  });
  $("#guess").keydown(function(event) {
    if(event.keyCode == 13) {
      guessMe();
    }
  });
});
