Deployed to Main net at address here
https://etherscan.io/address/0x11ca23350f873e5352345ad4df5ab8259e97c6b0

3 tokens have been created, 1 of each rarity
https://etherscan.io/tx/0x7d0f2a8b2e67e646a5e34515bbeb4d3dbf84e195b35ba897570661622fb5f605
https://etherscan.io/tx/0xb0ad45140a534482446676a79442da9470062a0977d7da7ab59231286b11de4c
https://etherscan.io/tx/0x20e0c5ec450d290853539eac5846c4a5db716079b861b685b098773c762d56a4



test version changes
- burn when create was removed and needs to be fixed



next to do
- add function to mint a a limited number of copies of already existing tokens
    - this will burn at least the same amount of tokens as the priginal mint, and also pay some to the creator



import ABI to front end to access functions

Important function calls are "mintRare", "mintEpic", "mintlegendary" 
- They take 1 arg, a string. This will be the address of picture to load