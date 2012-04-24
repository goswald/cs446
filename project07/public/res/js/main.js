var guessesLeft = 10;
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);

$(function() {
  updateScore(guessesLeft);
  populateHighScores(highScores);
});

function populateHighScores(scores) {
  for (var i = 0; i < scores.length; ++i) {
    $('div#highScores').append("<p>" + scores[i][0] + " " + scores[i][1] + "</p>");
  }
}

function updateScore(score) {
  $('h2#score span#guessesLeft').text(score);
}

$(document).ready(function() {
  var number = Math.floor(Math.random()*101);
  alert("The number is " + number);
  $("#btnGuess").click(function() {
    var guesstimate = $("#guess").val();
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
      alert("YOU WIN.");
    }
  });
});
