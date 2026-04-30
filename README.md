# CSE 406/506 Project

## Team Members
- Shihao Liu

## Project Overview
This repository contains the completed code for:
- Part 1: ERC-20 Fungible Token
- Part 2: ERC-721 NFT
- Part 3: DeFi Vault with governance membership and frontend UI

## Repository Contents
- `contracts/Shihao_Liu_project1.sol` — Part 1 FT contract
- `contracts/Shihao_Liu_NFT.sol` — Part 2 NFT contract
- `contracts/VaultCompleted.sol` — Completed vault contract for Part 3
- `frontend/index.html` — Frontend UI for interacting with the DeFi vault

## Network
- Sepolia testnet

## Deployed Contract Addresses
### Part 1 FT
- ShihaoToken: `0x7f1f96d4deD5Ce24D183f43954e13073f747565C`

### Part 2 NFT
- ShihaoLiuNFT: `0x01ad3c57C4D0065247931A4D01EFd5d84D4CA8c8`

### Part 3 Vault
- Vault: `0xB4762844C25aDfF031c04528ff97Db1b3416c0dD`

## Features Implemented

### Part 1
- Customized ERC-20 token
- Protected mint function with owner-only access

### Part 2
- Customized ERC-721 NFT
- NFT metadata includes image and extra information
- NFT image is displayed in MetaMask

### Part 3
- Users can deposit the Part 1 FT into the vault
- Users receive vault shares
- Withdrawal charges a fee in the underlying token
- Withdrawal fee is transferred to the admin
- Users receive a one-time governance membership upon deposit
- Governance membership is revoked when all vault shares are withdrawn
- Frontend supports:
  - Connect wallet
  - Display FT balance
  - Display vault share balance
  - Display membership balance
  - Approve
  - Deposit
  - Withdraw

## How to Run the Frontend
1. Open the `frontend` folder in VS Code
2. Run `index.html` with Live Server
3. Connect MetaMask on Sepolia
4. Interact with the vault through the UI

## Demo Flow
1. Connect wallet
2. Approve ShihaoToken for the vault
3. Deposit tokens into the vault
4. Check updated FT balance, vault shares, and membership balance
5. Withdraw shares
6. Verify admin receives withdrawal fee
7. Verify membership is revoked when all shares are withdrawn
