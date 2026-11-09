// TODO: define the 'expectedMinutesInOven' constant
let expectedMinutesInOven: Int = 40;

// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes _elapsedMinutes: Int) -> Int {
    return expectedMinutesInOven - _elapsedMinutes;
}

// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers _layers: Int) -> Int {
    return _layers * 2;
}

// TODO: define the 'totalTimeInMinutes' function
func totalTimeInMinutes(layers _layers: Int, elapsedMinutes _elapsedMinutes: Int) -> Int {
    return preparationTimeInMinutes(layers: _layers) + _elapsedMinutes
}
