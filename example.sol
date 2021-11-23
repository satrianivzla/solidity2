pragma solidity ^0.4.20;

contract SpaceDoggos {

    // Write your function below
    uint maxPlanetsPerSystem = 10;
    uint minPlanetsPerSystem = 3;

    // Write your function below
    uint planetCodeDigits = 7;
    uint systemCodeDigits = 7;

    // Write your function below
    uint planetCodeModulus = 10 ** planetCodeDigits;
    uint systemCodeModulus = 10 ** systemCodeDigits;

    // Write your function below
    struct Doggo {
        string name;
        uint8 breed;
        uint8 color;
        uint8 face;
        uint8 costume;
        uint coordX;
        uint coordY;
    }

    // Write your function below
    mapping(address => Doggo) doggos;

    // Write your function below
    function createDoggo(string _name, uint8 _breed, uint8 _color, uint8 _face, uint8 _costume) {
        Doggo memory myDoggo = Doggo({
            name: _name,
            breed: _breed,
            color: _color,
            face: _face,
            costume: _costume,
            coordX: 0,
            coordY: 0
        });

        doggos[msg.sender] = myDoggo;
    }

    // Write your function below
    function getSystemMap(uint _coordX, uint _coordY) returns(uint) {
        return uint(keccak256(_coordX, _coordY));
    }

}