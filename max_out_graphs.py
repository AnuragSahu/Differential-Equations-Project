import matplotlib.pyplot as plt
import numpy as np

x = 0.1

lam = 3.7

def logitic_map(x, lam):
    x = lam*x*(1-x)
    return x

population = []
n = []
for i in range(100):
    n.append(i)
    x = logitic_map(x, lam)
    population.append(x)

n = np.array(n)
population = np.array(population)

print(population.shape)
print(n.shape)

plt.plot(n,population, color='blue', linestyle='dashed', linewidth = 1,
         marker='o', markerfacecolor='red', markersize=2)
plt.xlabel('n, Generations')
plt.ylabel('Population')
plt.title('Population vs Generation Graph')
plt.show()