

---

# NFT Ticketing Smart Contract

## Vision

The NFT Ticketing project aims to revolutionize event ticketing by offering a decentralized platform for issuing and redeeming tickets as non-fungible tokens (NFTs). By using blockchain technology, this project ensures transparent ticket distribution, eliminates counterfeit tickets, and provides seamless access to events. Both event organizers and attendees benefit from increased trust, security, and efficiency.

## Features

- **NFT Ticket Issuance**: Event organizers can issue NFT tickets for events, specifying the event name and recipient's address.
- **Ticket Redemption**: Ticket holders can redeem their NFT tickets to gain access to events, ensuring that each ticket is used only once.
- **Decentralized Ownership**: The blockchain records each ticket's ownership and redemption status, ensuring transparency and preventing ticket fraud.

## Contract Address

- **Network**: Aptos Devnet
- **Contract Address**: `0x49c9cdc99dfc111f5479f4189e9ea6d58457937e5c877dfc423b7c3c4db942ce`

## How It Works

1. **Issue Ticket**:

   - Event organizers can call the `issue_ticket` function to issue an NFT ticket for an event.
   - The function takes the recipient's address and event name and stores the ticket information on the blockchain.
   - The NFT ticket is associated with the recipient's address.

2. **Redeem Ticket**:
   - Ticket owners can call the `redeem_ticket` function to mark their NFT ticket as redeemed.
   - The contract checks that the ticket has not yet been redeemed and updates its status accordingly.
   - Redeemed tickets cannot be reused, ensuring secure access control.

## Future Scope

- **NFT Marketplace Integration**: Enable a secondary market for users to buy and sell NFT tickets, allowing for the resale of tickets in a decentralized way.
- **Event Metadata**: Integrate event metadata (such as date, time, and venue) to provide detailed information on each NFT ticket.
- **Dynamic QR Codes**: Generate dynamic QR codes for each NFT ticket to facilitate on-site verification.
- **Rewards for Redemption**: Add functionality to reward ticket holders with loyalty tokens when they redeem their tickets.
- **Royalty Mechanism**: Introduce a royalty mechanism so that event organizers earn a percentage from every resale of the NFT ticket in the secondary market.

## Getting Started

- Clone this repository and install the necessary dependencies for the Aptos blockchain.
- Deploy the contract using your preferred deployment tool.
- Once deployed, event organizers can issue tickets, and ticket holders can redeem their tickets through the smart contract functions.

## Contributing

We welcome contributions to enhance the functionality and features of the NFT Ticketing smart contract. Please feel free to submit a pull request or open an issue if you have suggestions or improvements.

---


