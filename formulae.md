# Formula Sheet - ES96T Advanced Wireless Networks

$$ G_{dB} = 10 \cdot \log_{10}{G_{linear}} $$

$$ G_{linear} = 10^{({G_{dB}}{/10})} $$

## Week 1

Bit rate example 
Given 12 Mbps bit rate

QPSK 2 bits/symbol → 6 M symbols/s → 6 MHz Bandwidth \
8-PSK 3 bits/symbol → 4 M symbols/s → 4 MHz Bandwidth

Shannon Rate

$$ R = B \cdot \log_{2}{(1 + SNR)} $$

$$ R = B \cdot \log_{2}{(1 + \frac{P}{N_0 B})} $$

> Maybe add Shannon for FDMA and TDMA

## Week 2
Processing Gain

$$ G_{linear} \text{ (processing gain)}= \frac{R_c \text{ (chip rate)}}{R_s \text{ (user data rate)}} = \frac{1/T_c}{1/T} = \frac{T}{T_c} $$

$$ SIR_f = SIR_b + G $$

$$ SIR_f = \text{after de-spreading}, SIR_b = \text{before de-spreading} $$

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

$$ N = \text{cluster size}, n = \text{path loss component} $$

$$ i_0 = \text{number of adjacent cells (6 for hexagonal)} $$

## Week 4
Power allocation strategies

| **Feature**                | **Waterfilling**                                   | **Mercury Filling**                              | **Channel Inversion**                              |
|----------------------------|---------------------------------------------------|------------------------------------------------|--------------------------------------------------|
| **Objective**              | Maximize capacity by allocating power to better channels. | Maximize capacity while considering hardware constraints. | Ensure consistent signal strength at the receiver. |
| **Channel Power Allocation** | More power to better channels, less to weaker ones. | Modified based on constraints, penalizing certain channels. | More power to weaker channels, less to better ones. |
| **Efficiency**             | Highly power-efficient, maximizing channel capacity. | Less efficient due to constraints but still optimized. | Power-inefficient, especially for poor channels.  |
| **Focus on Poor Channels**  | Low/no power for very poor channels.              | Reduced power to penalized channels.           | Allocates high power to poor channels.            |
| **Complexity**             | Simple to implement.                              | Moderately complex (accounts for imperfections). | Simple to implement.                              |
| **Use Cases**              | OFDM, MIMO, and systems maximizing capacity.      | Systems with hardware limitations (e.g., nonlinearities). | Systems needing uniform signal quality (e.g., fairness in service). |
| **Impact on Capacity**     | Maximizes system capacity.                        | Slightly reduced capacity due to constraints.  | Suboptimal capacity due to power wastage.         |

$$ \text{Data Rate (throughput)} = \frac{\text{number of bits}}{\text{symbol duration}} $$

$$ \text{Data Rate (N Channels)} = \frac{\text{bits per symbol} \cdot \text{Number of channels}}{\text{total duration}} $$


Inter-Symbol interference exists when:
$
T_D < T_S  
$
.

To avoid this we add
$
T_U
$
such that
$
T_S + T_U \geq T_D
$.
$$ \text{Where } T_D = \text{Delay spread}, T_S = \text{Symbol duartion}, T_U = \text{Cyclic prefix duration} $$

## Week 5
Water filling power allocation
$$ \left( \frac{1}{x} - \frac{N_0}{{|h_i|}^2} \right)^{+} $$
$$ \text{Where } N_0 = \text{Noise power, } \frac{1}{x} = \text{ Water level, } {|h_i|}^2 = \text{Subchannel gain. (All in W)} $$