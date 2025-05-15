# Formula Sheet - ES96T Advanced Wireless Networks

$$ G_{dB} = 10 \cdot \log_{10}{G_{linear}} $$

$$ G_{linear} = 10^{({G_{dB}}{/10})} $$

### Week 1

Bit rate example 
Given 12 Mbps bit rate

QPSK 2 bits/symbol → 6 M symbols/s → 6 MHz Bandwidth \
8-PSK 3 bits/symbol → 4 M symbols/s → 4 MHz Bandwidth

Name | Bits per symbol
| -- | -- |
BPSK | 1 bits/symbol
QPSK | 2 bits/symbol
8-PSK | 3 bits/symbol
64-QAM | 6 bits/symbol

Shannon Rate

$$ R = B \cdot \log_{2}{(1 + \text{SNR}_{linear})} $$

$$ R = B \cdot \log_{2}{(1 + \frac{P}{N_0 B})} $$

where
$$ N_0 = \text{Power spectral density} $$

> Maybe add Shannon for FDMA and TDMA
---
### Week 2

Processing Gain

$$ G_{linear} \text{ (processing gain)}= \frac{R_c \text{ (chip rate)}}{R_s \text{ (user data rate)}} = \frac{1/T_c}{1/T} = \frac{T}{T_c} $$

$$ SIR_f = SIR_b + G $$

$$ SIR_f = \text{after de-spreading}, SIR_b = \text{before de-spreading} $$

$$ SIR_{(b)} = \frac{P_S \text{ (useful signal)}}{P_I \text{ (interference signal)}} $$

Example N users in a cell

$$ SIR = \frac{P}{(N-1)P} = \frac{1}{N-1} $$

Free space communication

$$ {P_r} \text{ (linear)} = P_T G_T G_r \left( \frac{\lambda}{4 \pi r} \right)^2 $$

$$ P_T = \text{transmit power}, G_T = \text{transmit gain}, G_R = \text{receive gain}, $$

$$ \lambda \text{ (wavelength) (m)} = \frac{c}{f} = \frac{3 \cdot 10^8}{f} , r = \text{distance (m)} $$

Another version
$$ P_r (\text{dBm}) = P_t(\text{dBm}) - 21.98 + 20 \log_{10}(\lambda) - 20 \log_{10}(d)$$

Noise power
$$ P_N \text{ (linear)} = kTB $$
$$k \text{ (Boltzmann Constant)} = 1.38 \cdot 10^{-23}$$
$$ T = \text{Temperature (Kelvin)}, B = \text{ Bandwidth (Hz)} $$

---
### Week 3
Average SIR approximation

$$ S/I = SIR \text{ (linear)} = \frac{(\sqrt{3N})^{n}}{i_0} $$

$$ N = \text{cluster size}, n = \text{path loss component} $$

$$ i_0 = \text{number of adjacent cells (6 for hexagonal)} $$

---
### Week 4
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

$$ T_S = \frac{1}{\text{Bandwidth}} $$

$$ \text{Data Rate (throughput)} = \frac{\text{number of bits}}{\text{symbol duration}} $$

$$ \text{Data Rate (Throughput N Channels)} = \frac{\text{bits per symbol} \cdot \text{Number of channels}}{\text{total duration}} $$

$$ \text{Overhead (N Channels)} = \frac{T_U}{\text{total duration}} $$

Total transmission time of the OFDM symbol

$$ \text{total duration} = T_S \cdot \text{(Num channels)} + T_U $$

$$ \text{Efficiency} = \frac{\text{throughput}}{\text{ideal TP}} $$

$$ \text{Ideal TP} = \frac{\text{bits per symbol} \cdot \text{Number of channels}}{T_S \cdot \text{(Num channels)}} = \frac{\text{bits per symbol}}{T_S}$$

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

---
### Week 5
Water filling power allocation
$$ \left( \frac{1}{x} - \frac{N_0}{{|h_i|}^2} \right)^{+} $$
$$ \text{Where } N_0 = \text{Noise power, } \frac{1}{x} = \text{ Water level, } {|h_i|}^2 = \text{Subchannel gain. (All in W)} $$

---
### Week 7

$$ P_{\text{total}} = \frac{P_{RH}}{\text{efficiency}} \times \frac{T}{C} + P_{OH}$$
$$ L \text{ (load)} = \frac{T}{C} $$
Where
$$ P_{\text{total}} = \text{Total power}, P_{RH} = \text{Radiohead power}, P_{OH} = \text{Overhead power}$$
$$ T = \text{traffic demand}, C = \text{Capacity} $$

---
### Week 8
Jain's Fairness
$$ f(x_1, \dots , x_n) = \frac{\left(  \sum^{n}_{i=1} x_i \right)^2 }{n\sum^{n}_{i=1} x_i^2} $$



Estimated Round Trip Time:
$$ \text{Est}_{\text{RTT}} = (1-\alpha) \cdot \text{Est}_{\text{RTT}} + \alpha \cdot \text{Sample}_{\text{RTT}}  $$

Deviation RTT:
$$  \text{Dev}_{\text{RTT}} = (1-\beta) \cdot \text{Dev}_{\text{RTT}} + \beta \cdot |\text{Sample}_{\text{RTT}} - \text{Dev}_{\text{RTT}}| $$

Timeout Interval

$$ \text{TI} = \text{Dev}_{\text{RTT}} + 4 \cdot \text{Dev}_{\text{RTT}}  $$

