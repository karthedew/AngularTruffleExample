// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

import "@chainlink/contracts/src/v0.7/interfaces/AggregatorV3Interface.sol";

/**
    AAVE / ETH	        0xd04647B7CB523bb9f26730E9B6dE1174db7591Ad
    AMPL / ETH	        0x562C092bEb3a6DF77aDf0BB604F52c018E4f2814
    AUD / USD	        0x5813A90f826e16dB392abd2aF7966313fc1fd5B8
    BAT / ETH	        0x0e4fcEC26c9f85c3D714370c98f43C4E02Fc35Ae
    BAT / USD	        0x8e67A0CFfbbF6A346ce87DFe06daE2dc782b3219
    BNB / USD	        0x8993ED705cdf5e84D0a3B754b5Ee0e1783fcdF16
    BTC / ETH	        0xF7904a295A029a3aBDFFB6F12755974a958C7C25
    BTC / USD	        0x6135b13325bfC4B00278B4abC5e20bbce2D6580e
    BUSD / ETH	        0xbF7A18ea5DE0501f7559144e702b29c55b055CcB
    BZRX / ETH	        0x9aa9da35DC44F93D90436BfE256f465f720c3Ae5
    CHF / USD	        0xed0616BeF04D374969f302a34AE4A63882490A8C
    COMP / USD	        0xECF93D14d25E02bA2C13698eeDca9aA98348EFb6
    CVI	                0x0BD102ef50a6a133B38Bf3Bd3d40cE36cc1aB5A8
    DAI / ETH	        0x22B58f1EbEDfCA50feF632bD73368b2FdA96D541
    DAI / USD	        0x777A68032a88E5A84678A77Af2CD65A7b3c0775a
    ENJ / ETH	        0xfaDbe2ee798889F02d1d39eDaD98Eff4c7fe95D4
    ETH / USDT RSI 4h	0x10900f50d1bC46b4Ed796C50A4Cc63791CaF7501
    ETH / USD	        0x9326BFA02ADD2366b30bacB125260Af641031331
    EUR / USD	        0x0c15Ab9A0DB086e062194c273CC79f41597Bbf13
    Ferrari F12 TDF 
        / USD	        0x22a2D07993A1A18b3b86E56F960fa735b6D6cFD9
    GBP / USD	        0x28b0061f44E6A9780224AA61BEc8C3Fcb0d37de9
    JPY / USD	        0xD627B1eF3AC23F1d3e576FA6206126F3c1Bd0942
    KNC / ETH	        0xb8E8130d244CFd13a75D6B9Aee029B1C33c808A7
    LINK / ETH	        0x3Af8C569ab77af5230596Acf0E8c2F9351d24C38
    LINK / USD	        0x396c5E36DD0a0F5a5D33dae44368D4193f69a1F0
    LTC / USD	        0xCeE03CF92C7fFC1Bad8EAA572d69a4b61b6D4640
    MANA / ETH	        0x1b93D8E109cfeDcBb3Cc74eD761DE286d5771511
    MKR / ETH	        0x0B156192e04bAD92B6C1C13cf8739d14D78D5701
    ORN / USDT	        0x66413F734E69C2C41B4902024D0C5C3A86b8EcD2
    Oil / USD	        0x48c9FF5bFD7D12e3C511022A6E54fB1c5b8DC3Ea
    REN / ETH	        0xF1939BECE7708382b5fb5e559f630CB8B39a10ee
    REP / ETH	        0x3A7e6117F2979EFf81855de32819FBba48a63e9e
    REP / USD	        0x8f4e77806EFEC092A279AC6A49e129e560B4210E
    SNX / ETH	        0xF9A76ae7a1075Fe7d646b06fF05Bd48b9FA5582e
    SNX / USD	        0x31f93DA9823d737b7E44bdee0DF389Fe62Fd1AcD
    SUSD / ETH	        0xb343e7a1aF578FA35632435243D814e7497622f7
    TRX / USD	        0x9477f0E5bfABaf253eacEE3beE3ccF08b46cc79c
    TSLA / USD	        0xb31357d152638fd1ae0853d24b9Ea81dF29E3EF2
    TUSD / ETH	        0x7aeCF1c19661d12E962b69eBC8f6b2E63a55C660
    UNI / ETH	        0x17756515f112429471F86f98D5052aCB6C47f6ee
    UNI / USD	        0xDA5904BdBfB4EF12a3955aEcA103F51dc87c7C39
    USDC / ETH	        0x64EaC61A2DFda2c3Fa04eED49AA33D021AeC8838
    USDC / USD	        0x9211c6b3BF41A10F78539810Cf5c64e1BB78Ec60
    USDT / ETH	        0x0bF499444525a23E7Bb61997539725cA2e928138
    USDT / USD	        0x2ca5A90D34cA333661083F89D831f757A9A50148
    XAG / USD	        0x4594051c018Ac096222b5077C3351d523F93a963
    XAU / USD	        0xc8fb5684f2707C82f28595dEaC017Bfdf44EE9c5
    XRP / USD	        0x3eA2b7e3ed9EA9120c3d6699240d1ff2184AC8b3
    XTZ / USD	        0xC6F39246494F25BbCb0A8018796890037Cb5980C
    YFI / ETH	        0xC5d1B1DEb2992738C0273408ac43e1e906086B6C
    ZRX / ETH	        0xBc3f28Ccc21E9b5856E81E6372aFf57307E2E883
    ZRX / USD	        0x24D6B177CF20166cd8F55CaaFe1c745B44F6c203
    sCEX / USD	        0xA85646318D20C684f6251097d24A6e74Fe1ED5eB
    sDEFI / USD	        0x70179FB2F3A0a5b7FfB36a235599De440B0922ea
 */

contract PricefeedsKovan {

    AggregatorV3Interface internal ethPriceFeed_USD;
    AggregatorV3Interface internal linkPriceFeed_USD;

    constructor() {
        ethPriceFeed_USD = AggregatorV3Interface(0x9326BFA02ADD2366b30bacB125260Af641031331);
        linkPriceFeed_USD = AggregatorV3Interface(0x396c5E36DD0a0F5a5D33dae44368D4193f69a1F0);
    }

    /**
    //      * Network: Kovan
    //      * Oracle: 0x2f90A6D021db21e1B2A077c5a37B3C7E75D15b7e
    //      * Job ID: 29fa9aa13bf1468788b7cc4a500a45b8
    //      * Fee: 0.1 LINK
    //      
    */
    /**
     * Returns the latest price
     */
    function getEthLatestPrice() public view returns (int) {
        (
            uint80 roundID, 
            int price,
            uint startedAt,
            uint timeStamp,
            uint80 answeredInRound
        ) = ethPriceFeed_USD.latestRoundData();
        return price;
    }
}