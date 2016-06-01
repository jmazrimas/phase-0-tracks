
portfolios={
	conservative: {
		stocks: ['AAPL','IBM','GOOG'],
		bonds: ['RPHIX','PHYSX'],
		other: []
	},
	moderate: {
		stocks: ['FBOOK','AAPL','GM','YG','YUM','F'],
		bonds: ['RPHIX'],
		other: {
			'SWAP'=>'FBOOK SWAP'}
	},
	aggressive: {
		stocks: ['AAPL','LULU','CAT'],
		bonds: [],
		other: {
			'MBS'=> ['XYZ339','ABC8934'],
			'CDX' => ['RISKY3934','VRISKYR3']
		}
	}
}

p "Total holdings for 'conservative' portfolio:"
p portfolios[:conservative]

p "First two stocks held in 'moderate' portfolio:"
p portfolios[:moderate][:stocks][0..1]

p "Alternative instruments (MBS specifically) in 'aggressive' portfolio"
p portfolios[:aggressive][:other]['MBS']