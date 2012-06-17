define(["chai", "mocha", "konacha/" + window.KonachaMode], function (chai) {
mocha.setup(Konacha.mochaOptions);

beforeEach(function () {
  var e = document.getElementById('konacha');
  if (e) {
    e.parentNode.removeChild(e);
  }

  e = document.createElement("div");
  e.id = "konacha";
  document.body.appendChild(e);
});

window.expect = chai.expect,
window.should = chai.should(),
window.assert = chai.assert;
});
