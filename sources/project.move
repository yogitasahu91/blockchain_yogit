module MyModule::NFTTicketing {

    use aptos_framework::signer;
    use std::vector;

    /// Struct representing an NFT ticket.
    struct NFTTicket has store, key {
        event_name: vector<u8>,  // Name of the event
        owner: address,          // Address of the ticket owner
        is_redeemed: bool,       // Whether the ticket has been redeemed
    }

    /// Function for an event organizer to issue an NFT ticket.
    public fun issue_ticket(organizer: &signer, recipient: address, event_name: vector<u8>) {
        let ticket = NFTTicket {
            event_name,
            owner: recipient,
            is_redeemed: false,  // Initially not redeemed
        };
        move_to(organizer, ticket);
    }

    /// Function for the ticket owner to redeem the NFT ticket for event access.
    public fun redeem_ticket(owner: &signer) acquires NFTTicket {
        let ticket = borrow_global_mut<NFTTicket>(signer::address_of(owner));

        // Ensure the ticket has not been redeemed yet
        assert!(!ticket.is_redeemed, 1);

        // Mark the ticket as redeemed
        ticket.is_redeemed = true;
    }
}
