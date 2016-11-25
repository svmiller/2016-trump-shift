# What's the Matter with Wisconsin? Probably Not Vote Hacking

> John Bonifaz and J. Alex Halderman think they have evidence of vote hacking in Wisconsin. I don't think they do. This blog post offers an analysis of Wisconsin county-level data from the 2012 and 2016 elections and finds no strong evidence for the paper ballot argument offered by Bonifaz and Halderman.

**Source:** http://svmiller.com/blog/2016/11/wisconsin-vote-hacking-probably-not-stop-it/

## Codebook

`county`: Unit of analysis (the Wisconsin county)  
`popwiki`: Population size via Wikipedia. I should probably delete this since I have better/newer data.  
`trump`: Raw vote tally for Trump in 2016. (POLITICO)  
`clinton`: Raw vote tally for Clinton in 2016. (POLITICO)  
`others2016`: Raw vote tally for third parties in 2016. (POLITICO)  
`total2016`: Total vote tally for the county in 2016. (POLITICO)  
`romney`: Final vote tally for Romney in 2012.  
`obama`: Final vote tally for Obama in 2012.  
`total2012`: Final votes cast overall in the county in 2012.  
`paper`: Whether county had paper ballots in 2016. (Verified Voting)  
`pop`: Estimated population size in the county. (Census)  
`white`: Estimated percentage of the county that identifies as white and white only. (Census)  
`black`: Estimated percentage of the county that identifies as black and black only. (Census)  
`collegeed`: Estimated percentage of the county that has a college degree. (Census)  

Note this Github repository also contains raw source information for third-party verification.