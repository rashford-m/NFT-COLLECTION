// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/extentions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./IWhitelist.sol";

contract CryptoDevs is ERC721Enumerable, Ownable {
    /**
     * @dev _baseTokenURI for computing {tokenURI}. If set, the resulting URI for each
     * token will be the concatenation of the `baseURI` and the `tokenId`.
     */
    string _baseTokenURI;
    IWhitelist whitelist;
    bool public presaleStarted;
    uint256 public presaleEnded;
    uint256 public maxTokensIds = 20;
    uint256 public tokenIds;
    uint256 public _price = 0.01 ether;

    constructor(
        string memory _baseURI,
        address whitelistContract
    ) ERC721("Crypto Devs", "CD") {
        _baseTokenURI = _baseURI;
        whitelist = IWhitelist(whitelistContract);
    }

    function startPresale() public onlyOwner {
        presaleStarted = true;
        presaleEnded = block.timestamp + 5 minutes;
    }

    function presaleMint() public payable {
        require(
            presaleStarted && block.timestamp < presaleEnded,
            "Presale ended"
        );
        require(
            whitelist.whitelistedAddresses(msg.sender),
            "You are not in whitelist"
        );
        require(tokenIds < maxTokensIds, "Exceeded the limit");
        require(msg.value >= _price, "Ether sent is not correct");

        tokenIds += 1;

        _safeMint(msg.sender, tokenIds);
    }

    function mint() public payable {
        require(presaleStarted && block.timestamp >= presaleEnded, "Presale has not ended yet" );
        
    }
}
