Deployed to Main net at address
0x4d32D2D14730A62eB1FDF96cF580C2024a631e84

test version changes
- burn to mint costs reduced to 1, 2, 3 from 10, 25, 137 (final costs tbd)



next to do
- add function to mint a a limited number of copies of already existing tokens
- consider extra cost to transfer
    - cost paid to owner or burned or split between both



import ABI to front end to access functions

Important function calls are "mintRare", "mintEpic", "mintlegendary" 
- They take 1 arg, a string. This will be the address of picture to load
- Call takes MOAR from your account and BURNS it - NOT TESTED YET 