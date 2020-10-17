pragma solidity ^0.5.0;

import "./ERC721Full.sol";

contract Kolor is ERC721Full {
  string[] public kolors;
  mapping(string => bool) _kolorExists;

  constructor() ERC721Full("Kolor", "KOLOR") public {
  }

  // E.G. kolor = "#FFFFFF"
  function mint(string memory _kolor) public {
    require(!_kolorExists[_kolor]);
    uint _id = kolors.push(_kolor);
    _mint(msg.sender, _id);
    _kolorExists[_kolor] = true;
  }
}
