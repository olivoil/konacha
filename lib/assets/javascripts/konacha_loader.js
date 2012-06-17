require(KonachaRequireJS.deps, function () {
    require(KonachaRequireJS.specs, function () {
        mocha.run();
    });
});
