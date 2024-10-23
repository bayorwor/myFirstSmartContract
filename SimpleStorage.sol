// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; //stating solidity verion

contract SimpleStorage{
    // favoriteNumber will initialize to zero
    uint256 myFavoriteNumber; // default to 0 as value
    uint256[] listOfFavoriteNumbers;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber=_favoriteNumber;
    }

    // view, pure
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    function addNewPerson(string memory _name, uint256 _favoriteNumber) public {
        Person memory newPerson= Person({favoriteNumber: _favoriteNumber, name: _name});
        listOfPeople.push(newPerson);
    }
}