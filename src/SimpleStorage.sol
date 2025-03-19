// I'm a comment!
// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;
//to deploy contract directly on chain  forge create SimpleStorage --rpc=url networkName ==private-key key
//with script forge script script/SimpleStorage --rpc=url networkName
//cast --to-base 0xac448 dec  convet to hex

//cast wallet import defaultKey --interactive  create wallet secreat key
contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    // uint256[] public anArray;

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
