pragma solidity ^0.6.0;

import "browser/ERC721.sol";
import "browser/SafeMath.sol";
import "browser/Strings.sol";
import "browser/IERC20.sol";
import "browser/SafeERC20.sol";

abstract contract burn2mint is ERC721 {
    using SafeMath for uint256;
    using Address for address;
    using Strings for uint256;
    using SafeERC20 for IERC20;

    address internal constant MOAR = 0xBf131dCbE3436dab8a7c82D9C3666d652ca38eaB;
    address internal constant BURN = 0x0420420420420420420420420420420420420420;
    IERC20 public ERCInterface;

    // Token name
    string private _name;

    // Token symbol
    string private _symbol;

    uint256 private _currentTokenId = 0;

    // costs to mint in moar
    uint256 private constant rare = 10000000000000000000; // 10
    uint256 private constant epic = 25000000000000000000; // 25
    uint256 private constant legendary = 137000000000000000000; // 137

    constructor(string memory name, string memory symbol) public {
        _name = name;
        _symbol = symbol;
        ERCInterface = IERC20(MOAR);
    }

    function _getNextTokenId() private view returns (uint256) {
        return _currentTokenId.add(1);
    }

    function _incrementTokenId() private {
        _currentTokenId++;
    }

    function mintLegendary(string memory _tokenURI) public {
        address buyer = _msgSender();
        //ERCInterface = IERC20(MOAR);
        //ERCInterface.safeApprove(address(this), legendary);
        //ERCInterface.\safeTransferFrom(buyer, BURN, legendary);
        uint256 newTokenId = _getNextTokenId().add(legendary);
        _mint(buyer, newTokenId);
        _setTokenURI(newTokenId, _tokenURI);
        _incrementTokenId();
    }
}
