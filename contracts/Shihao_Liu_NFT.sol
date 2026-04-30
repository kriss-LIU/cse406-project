// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title  ShihaoLiuNFT
 * @notice ERC-721 NFT — CSE 406/506 Part 2 (Tasks 1, 2, 3)
 *         Compatible with OpenZeppelin v5 (no Counters dependency)
 */
contract ShihaoLiuNFT is ERC721URIStorage, Ownable {

    uint256 private _nextTokenId;

    event NFTMinted(address indexed to, uint256 indexed tokenId, string tokenURI);

    constructor()
        ERC721("Shihao Liu NFT", "SLNFT")   // Task 1: custom name & symbol
        Ownable(msg.sender)
    {}

    /**
     * @notice Mint one NFT to `to` with the given metadata URI.
     * @dev    Only the contract owner can call this.
     * @param to        Recipient address.
     * @param tokenURI_ ipfs://... URI pointing to the metadata JSON.
     */
    function safeMint(address to, string memory tokenURI_)
        public
        onlyOwner
        returns (uint256)
    {
        uint256 tokenId = _nextTokenId;
        _nextTokenId++;

        _safeMint(to, tokenId);
        _setTokenURI(tokenId, tokenURI_);   // Tasks 2 & 3

        emit NFTMinted(to, tokenId, tokenURI_);
        return tokenId;
    }

    /// @notice Total number of tokens minted so far.
    function totalMinted() external view returns (uint256) {
        return _nextTokenId;
    }
}
