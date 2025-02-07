N0_dB = 3; % Noise pwr (dB)
water_lvl = 2.5; % (W)

% set subchannel gains (dB)
hi_db = [6.02, 3];

% convert to linear (W)
hi = 10.^(hi_db/10);
N0 = 10^(N0_dB/10);

% get subchannel pwr allocation
Pi = (water_lvl - N0./hi)

% get total pwr allocation
Ptotal = sum(Pi)
