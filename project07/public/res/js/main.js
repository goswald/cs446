var guessesLeft = 10;
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);
var number = Math.ceil(Math.random()*100);
var theDate = new Date();
var dateTimeVariable = (theDate.getFullYear().toString() + (theDate.getMonth()+1).toString() + theDate.getDate().toString() + theDate.getHours().toString() + theDate.getMinutes().toString() + theDate.getSeconds().toString());

$(function() {
  updateScore(guessesLeft);
  populateHighScores(highScores);
});

function addUser(score, name) {
  highScores.push([score+0, name]);
  highScores.sort(compareNumbers);
  highScores.reverse();
  populateHighScores(highScores);
}

function compareNumbers(firstNum, secondNum) { 
  return parseInt(firstNum[0]) - parseInt(secondNum[0])
  /*
  Logic courtesy of Zeke Chopper.  THANK YOU, ZEKE.
  Since I got help for this from Zeke, I'll explain so that my 
  understanding  of the code is known.  highScores.sort() takes a 
  function, which it uses  to then compare numbers.  Without this, I'm 
  assuming it just parses the different character and integer values as
  the strings to compare, hence the difference between "10 - name" and
  toInt("1" + "0" + " " + "-" + " " + "name").
  */
}

function playAgain() {
  number = Math.floor(Math.random()*101);
  guessesLeft = 10;
  updateScore(guessesLeft);
  $("#guess").val("");
}

function fadeIn() {
  $("h1").fadeIn("fast");
  $("p").fadeIn("fast");
  $("#guessTheNumber").fadeIn("fast");
  $("h2").fadeIn("fast");
  $("div#highScores").fadeIn("fast");
}

function fadeOut() {
  $("h1").fadeOut("slow");
  $("p").fadeOut("slow");
  $("#guessTheNumber").fadeOut("slow");
  $("h2").fadeOut("slow");
  $("div#highScores").fadeOut("slow");
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
          window.close();  // This doesn't always work.
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
  }
}
    
function populateHighScores(scores) {
  $("div#highScores").text("");
  for (var i = 0; i < scores.length; ++i) {
    $('div#highScores').append("<p>" + scores[i][0] + " " + scores[i][1] + "</p>");
  }
}

function updateScore(score) {
  $('h2#score span#guessesLeft').text(score);
}

$(document).ready(function() {
  $("#btnGuess").click(function() {
      guessMe();   
  });
  $("#guess").keydown(function(event) {
    if(event.keyCode == 13) {
      guessMe();
    }
  });
});
