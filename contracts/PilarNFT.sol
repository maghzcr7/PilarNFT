// SPDX-License-Identifier: MIT

pragma solidity 0.8.11;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract PilarNFT is ERC721Enumerable {
    constructor() ERC721("PilarNFT", "PNFT") {}

    function mint() public {
        _mint(msg.sender, totalSupply());
    }

    function tokenURI(uint256 tokenId)
        public
        pure
        override
        returns (string memory)
    {
        return
            string(
                abi.encodePacked(
                    "",
                    Strings.toString(tokenId),
                    ".json"
                )
            );
    }
}