_fn_printIteration = {
    private["_array", "_iteration"];
    _array = _this select 0;
    _iteration = _this select 1;
    systemChat(str(_iteration) + ", " + str(_array));
};

_fn_generateRandomArray = {
    private["_array", "_length", "_i", "_value"];
    _length = _this;
    _array = [];
    for "_i" from 0 to _length do {
        _value = floor(-100 + (random(1) * 201));
        _array = [_array, _value] call fn_vbs_arrayPush;
    };
    _array
};

_fn_isSorted = {
    private["_array","_length","_isSorted","_i"];
    _array = _this select 0;
    _length = _this select 1;
    _isSorted = true;
    for "_i" from 1 to _length do {
        if ((_array select (_i - 1)) > (_array select _i)) then {
            _isSorted = false;
        };
    };
    _isSorted
};

_fn_shuffle = {
    private["_array", "_length", "_i", "_random", "_temp1", "_temp2"];
    _array = _this select 0;
    _length = (_this select 1);
    for "_i" from 0 to _length do {
        _random = floor(random(1) * _i);
        _temp1 = _array select _i;
        _temp2 = _array select _random;
        [_array, _i] call fn_vbs_arrayRemoveAt;
        _array = [_array, [_temp2], _i] call fn_vbs_arrayInsert;
        [_array, _random] call fn_vbs_arrayRemoveAt;
        _array = [_array, [_temp1], _random] call fn_vbs_arrayInsert;
    };
    _array
};

_fn_bogosort = {
    private["_array", "_iteration", "_printIterationsEvery", "_length"];
    _length = ((_this select 0) - 1);
    _printIterationsEvery = _this select 1;
    _iteration = 0;
    _array = _length call _fn_generateRandomArray;
    [_array, _iteration] call _fn_printIteration;
    while {!([_array, _length] call _fn_isSorted)} do {
        _iteration = _iteration + 1;
        _array = [_array, _length] call _fn_shuffle;
        if ((_iteration % _printIterationsEvery) == 0) then {
            [_array, _iteration] call _fn_printIteration;
        };
    };
    systemChat("Result:");
    [_array, _iteration] call _fn_printIteration;
};

[8, 100] call _fn_bogosort;