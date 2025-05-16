# Formula Sheet - ES96T Advanced Wireless Networks
Author: Alex Florescu
Date: 16/05/2025

## General Formulas

$$ G_{dB} = 10 \cdot \log_{10}{\left( G_{W} \right)} $$

$$ G_{W} = 10^{(G_{dB}/10)} $$

$$ G_{dBm} = 10 \cdot \log_{10}{\left( G_{mW} \right)} $$

$$ G_{dBm} = 10 \cdot \log_{10}{\left( G_{W} \cdot 1000 \right)} $$

---

## Week 1

### Bit Rate Example
Given 12 Mbps bit rate:

- QPSK (2 bits/symbol) → 6 M symbols/s → 6 MHz Bandwidth  
- 8-PSK (3 bits/symbol) → 4 M symbols/s → 4 MHz Bandwidth

### Modulation Schemes
| Name    | Bits per symbol |
|---------|-----------------|
| BPSK    | 1               |
| QPSK    | 2               |
| 8-PSK   | 3               |
| 64-QAM  | 6               |

### Shannon Rate
$$ R = B \cdot \log_{2}{(1 + \text{SNR}_{linear})} $$

$$ R = B \cdot \log_{2}{\left(1 + \frac{P}{N_0 B}\right)} $$

where  

$$ N_0 = \text{Power spectral density} $$

> Maybe add Shannon for FDMA and TDMA

---

## Week 2

### Processing Gain
$$ G_{linear} \text{ (processing gain)} = \frac{R_c \text{ (chip rate)}}{R_s \text{ (user data rate)}} = \frac{1/T_c}{1/T} = \frac{T}{T_c} $$

$$ SIR_f = SIR_b + G $$

where:

$$ SIR_f = \text{after de-spreading} $$  

$$ SIR_b = \text{before de-spreading} $$

$$ SIR_{(b)} = \frac{P_S \text{ (useful signal)}}{P_I \text{ (interference signal)}} $$

### Example: N users in a cell
$$ SIR = \frac{P}{(N-1)P} = \frac{1}{N-1} $$

### Free Space Communication
$$ P_R \text{ (linear)} = P_T G_T G_R \left( \frac{\lambda}{4 \pi r} \right)^2 $$

where:  

$$ P_T = \text{transmit power} $$  

$$ G_T = \text{transmit gain} $$  

$$ G_R = \text{receive gain} $$  

$$ \lambda \text{ (wavelength, m)} = \frac{c}{f \text{ (Hz)}} = \frac{3 \cdot 10^8}{f} $$  

$$ r = \text{distance (m)} $$

In dB:  

$$ P_R = P_T + G_T + G_R + 20 \log_{10}{\left( \frac{c}{f} \right)} - 21.98 - 20 \log_{10}(r) $$

Alternative version:  

$$ P_r \text{ (dBm)} = P_t \text{ (dBm)} - 21.98 + 20 \log_{10}(\lambda) - 20 \log_{10}(d) $$

### Noise Power

$$ P_N \text{ (linear)} = kTB $$

where:  

$$ k \text{ (Boltzmann Constant)} = 1.38 \cdot 10^{-23} $$  

$$ T = \text{Temperature (Kelvin)} = t \left( \degree C \right) + 273.15 $$  

$$ B = \text{Bandwidth (Hz)} $$

---

## Week 3

### Average SIR Approximation
$$ S/I = SIR \text{ (linear)} = \frac{(\sqrt{3N})^{n}}{i_0} $$

where:  

$$ N = \text{cluster size} $$  

$$ n = \text{path loss component} $$  

$$ i_0 = \text{number of adjacent cells (6 for hexagonal)} $$

---

## Week 4

### Power Allocation Strategies

| **Feature**                | **Waterfilling**                                   | **Mercury Filling**                              | **Channel Inversion**                              |
|----------------------------|---------------------------------------------------|------------------------------------------------|--------------------------------------------------|
| **Objective**              | Maximize capacity by allocating power to better channels. | Maximize capacity while considering hardware constraints. | Ensure consistent signal strength at the receiver. |
| **Channel Power Allocation** | More power to better channels, less to weaker ones. | Modified based on constraints, penalizing certain channels. | More power to weaker channels, less to better ones. |
| **Efficiency**             | Highly power-efficient, maximizing channel capacity. | Less efficient due to constraints but still optimized. | Power-inefficient, especially for poor channels.  |
| **Focus on Poor Channels**  | Low/no power for very poor channels.              | Reduced power to penalized channels.           | Allocates high power to poor channels.            |
| **Complexity**             | Simple to implement.                              | Moderately complex (accounts for imperfections). | Simple to implement.                              |
| **Use Cases**              | OFDM, MIMO, and systems maximizing capacity.      | Systems with hardware limitations (e.g., nonlinearities). | Systems needing uniform signal quality (e.g., fairness in service). |
| **Impact on Capacity**     | Maximizes system capacity.                        | Slightly reduced capacity due to constraints.  | Suboptimal capacity due to power wastage.         |

### OFDM Basics
$$ T_S = \frac{1}{\text{Bandwidth}} $$

$$ \text{Data Rate (throughput)} = \frac{\text{number of bits}}{\text{symbol duration}} $$

$$ \text{Data Rate (Throughput N Channels)} = \frac{\text{bits per symbol} \cdot \text{Number of channels}}{\text{total duration}} $$

$$ \text{Overhead (N Channels)} = \frac{T_U}{\text{total duration}} $$

Total transmission time: 

$$ \text{total duration} = T_S \cdot \text{(Num channels)} + T_U $$

Efficiency: 

$$ \text{Efficiency} = \frac{\text{throughput}}{\text{ideal TP}} $$

Ideal throughput: 

$$ \text{Ideal TP} = \frac{\text{bits per symbol} \cdot \text{Number of channels}}{T_S \cdot \text{(Num channels)}} = \frac{\text{bits per symbol}}{T_S} $$

### Inter-Symbol Interference
Exists when: 

$$ T_D < T_S $$

To avoid this, add: 

$$ T_U \text{ such that } T_S + T_U \geq T_D $$

where:  

$$ T_D = \text{Delay spread} $$  

$$ T_S = \text{Symbol duration} $$  

$$ T_U = \text{Cyclic prefix duration} $$

---

## Week 5

### Water Filling Power Allocation
$$ \left( \frac{1}{x} - \frac{N_0}{{|h_i|}^2} \right)^{+} $$

where:  

$$ N_0 = \text{Noise power} $$  

$$ \frac{1}{x} = \text{Water level} $$  

$$ {|h_i|}^2 = \text{Subchannel gain (all in W)} $$

---

## Week 7

$$ P_{\text{total}} = \frac{P_{RH}}{\text{efficiency}} \times \frac{T}{C} + P_{OH} $$

$$ L \text{ (load)} = \frac{T}{C} $$

where:  

$$ P_{\text{total}} = \text{Total power} $$  

$$ P_{RH} = \text{Radiohead power} $$  

$$ P_{OH} = \text{Overhead power} $$  

$$ T = \text{Traffic demand} $$  

$$ C = \text{Capacity} $$

---

## Week 8

### Jain's Fairness

$$ f(x_1, ..., x_n) = \frac{(\sum_{i=1}^n x_i)^2}{n \cdot \sum_{i=1}^n x_i^2} $$

### RTT Estimation
Estimated Round Trip Time:

$$ Est_{RTT} = (1-\alpha) \cdot Est_{RTT} + \alpha \cdot Sample_{RTT} $$

Deviation RTT:

$$ Dev_{RTT} = (1-\beta) \cdot Dev_{RTT} + \beta \cdot |Sample_{RTT} - Dev_{RTT}| $$

Timeout Interval:

$$ TI = Est_{RTT} + 4 \cdot Dev_{RTT} $$

### Loss Rate and Throughput

$$ \text{Loss Rate} = \frac{1}{\text{data sent with no interruptions}} $$

$$ \text{Throughput} = \frac{\text{data per cycle}}{\text{time per cycle}} $$

### TCP Bandwidth Estimation
$$ \text{BW} = \frac{\text{MSS}}{\text{RTT}} \cdot \frac{C}{\sqrt{p}} $$

where:  

$$ C = \sqrt{3/2} = 1.2247 \text{ (Constant)} $$  

$$ p = \text{Loss probability} $$

Upper bound on TCP transfer rate: 

$$ \text{BW}_{\text{max}} = \frac{\text{MSS}}{\text{RTT}} \cdot \frac{1}{\sqrt{p}} $$

---

## Week 9

### Vulnerable Time
$$ \text{Frame Rate} = \frac{\text{transmission rate}}{\text{frame size}} = \frac{1}{\text{frame duration}} $$

$$ \text{Vulnerable time (Pure Aloha)} = 2 \cdot (\text{frame duration}) $$

$$ \text{Vulnerable time (Slotted Aloha)} = 1 \cdot (\text{frame duration}) $$

### Aloha Throughput
Slotted Aloha: 

$$ S \text{ (Throughput)} = G \cdot e^{-G} = G \cdot p $$

$$ \text{TP}_{\text{max}} \text{ when } G = 1 $$

Pure Aloha:  

$$ S \text{ (Throughput)} = G \cdot e^{-2G} $$

$$ \text{TP}_{\text{max}} \text{ when } G = 0.5 $$

where:  

$$ p = \text{Probability of successful transmission} $$

### Traffic
$$ G = \alpha \cdot T_{\text{frame}} $$

where:  

$$ \alpha = \text{Frame arrival rate} $$  

$$ T_{\text{frame}} = \text{Frame duration} $$

Alternative definition: 

$$ G \text{ (traffic demand)} = \frac{\text{number of frames}}{\text{transmission time}} $$

$$ T \text{ (transmission time)} = \frac{\text{frame size}}{\text{rate}} = \frac{L}{R} $$

### Transmission Probabilities
Probability of transmission: 

$$ p = \text{Probability a station transmits} $$

Success probabilities:  
- Pure Aloha:
  
$$ \text{Efficiency} = N \cdot p \cdot (1-p)^{2(N-1)} $$

- Slotted Aloha:

$$ \text{Efficiency} = N \cdot p \cdot (1-p)^{N-1} $$

where: 

$$ N = \text{Number of stations} $$

Probability station X succeeds first time in slot M: 

$$ P = \left( \left(1-p(1-p)^{N-1}\right)^{M-1} \right) \cdot \left( p(1-p)^{N-1} \right) $$
