require(KonachaRequireJS.deps, function () {
    require(KonachaRequireJS.specs, function () {
        window.onload = function () { mocha.run(); }
    });
});
