// knitting pattern generator
// outputs 10st X 20 lines of random knit and purl

// ------------------------------------------
// -----------Functional Code----------------
// ------------------------------------------

var stitches = ['k', 'p'];

var rowGenerator = function() {
  var rowPattern = [];
  for (var i = 0; i < rowLength; i++) {
    rowPattern.push('');
  }
  return rowPattern;
}

var patternGenerator = function() {
  var finalPattern = [];
  for (var i = 0; i < patternHeight; i++) {
    var rowPattern = rowGenerator();
    finalPattern.push(rowPattern);
  }
  return finalPattern;
};

patternGenerator();

// ----------------------------------------
// ------------Display Code----------------
// ----------------------------------------

var rowFinished = function() {
  $($patternChart).on('click', function(event) {
   $(event.target).closest('div').toggleClass('done');
  })
}

var $patternChart = $('#pattern-chart');

$('button').on('click', function() {
  $patternChart.empty();
  var finalPattern = patternGenerator(stitches);
  finalPattern.forEach(function(line) {
    var $line = $('<div>');
    $patternChart.prepend($line);

    line.forEach(function(stitch) {
      if (stitch === 'p') {
        var $stitch = $('<span>').text(stitch).addClass('purl');
      }else {
        var $stitch = $('<span>').text(stitch).addClass('knit');
      }

      $line.append($stitch);
    });

  });
  rowFinished();
});
