# Formula Sheet - ES96T Advanced Wireless Networks

$$
G_{dB} = 10 \cdot \log_{10}{G_{linear}} $$
$$ G_{linear} = 10^{({G_{dB}}{/10})}
$$

## Week 1

Bit rate example 
Given 12 Mbps bit rate

QPSK 2 bits/symbol → 6 M symbols/s → 6 MHz Bandwidth \
8-PSK 3 bits/symbol → 4 M symbols/s → 4 MHz Bandwidth

Shannon Rate
$$ R = B \cdot \log_{2}{(1 + SNR)} $$
$$ R = B \cdot \log_{2}{(1 + \frac{P}{N_0 B})} $$

$$ x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a} $$

> Maybe add Shannon for FDMA and TDMA

## Week 2
Processing Gain
$$
G_{linear} \text{ (processing gain)}= \frac{R_c \text{ (chip rate)}}{R_s \text{ (user data rate)}} = \frac{1/T_c}{1/T} = \frac{T}{T_c} $$
$$ SIR_f = SIR_b + G $$
$$ SIR_f = \text{after de-spreading, } 
SIR_b = \text{before de-spreading} $$
$$ SIR = \frac{P_S \text{ (useful signal)}}{P_I \text{ (interference signal)}} $$

Example N users in a cell
$$ SIR = \frac{P}{(N-1)P} = \frac{1}{N-1} $$

Free space communication

$$ {P_r} \text{ (linear)} = P_T G_T G_r \left( \frac{\lambda}{4 \pi r} \right)^2 $$
$$ P_T = \text{transmit power}, G_T = \text{transmit gain}, G_R = \text{receive gain}, $$
$$ \lambda \text{ (wavelength)} = \frac{c}{f} = \frac{3 \cdot 10^8}{f} , r = \text{distance} $$

## Week 3
Average SIR approximation
$$ S/I = SIR = \frac{(\sqrt{3N})^{n}}{i_0} $$
$$ N = \text{cluster size}, n = path loss component $$
$$ i_0 = \text{ number of adjacent cells (6 for hexagonal)} $$
