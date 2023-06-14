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

     
 }