pragma solidity ^0.5.0;

import "./KIP17.sol";
import "./KIP17Enumerable.sol";
import "./KIP17Metadata.sol";
import "./Decent.sol";

/**
 * @title Full KIP-17 Token
 * This implementation includes all the required and some optional functionality of the KIP-17 standard
 * Moreover, it includes approve all functionality using operator terminology
 * @dev see http://kips.klaytn.com/KIPs/kip-17-non_fungible_token
 */
contract DecentToken is KIP17, KIP17Enumerable, KIP17Metadata, Decent {
    constructor (string memory name, string memory symbol, address proxyAddress, address rewardAddress) public KIP17Metadata(name, symbol) Decent(proxyAddress,rewardAddress) {
        // solhint-disable-previous-line no-empty-blocks
    }
}