# Lottery DApp

This is a decentralized lottery application (DApp) built using **Solidity smart contracts** and a **React frontend**.  
Users can enter the lottery by sending ETH, and a random winner is selected securely.

## Features

- Users can enter the lottery by sending ETH.
- Only the contract owner can pick a winner.
- Random winner selection is secure (can be integrated with Chainlink VRF).
- Frontend displays participants, total pot, and transaction status.
- Responsive and user-friendly interface.
- Historical winners can be displayed (optional).

## Getting Started

### Prerequisites

- Node.js and npm installed
- MetaMask wallet
- Hardhat or Remix for smart contract deployment
- Ethereum testnet (e.g., Goerli) or local blockchain

### Smart Contract Deployment

1. Compile the smart contract using Hardhat or Remix.
2. Deploy the contract to your desired Ethereum network.
3. Note down the deployed contract address.

### Frontend Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/username/lottery-dapp.git
   cd lottery-dapp
