// SPDX-License-Identifier: MIT

pragma solidity 0.8.18; // Standing our version

contract SimpleStorage {
    // favoriteNumber gets initialized with 0 if not value are given (= 7 FE)
    uint256 myFavoriteNumber; 

    // uint256[] listOfFavoriteNumbers;
    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }


}