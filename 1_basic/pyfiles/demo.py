import integrate
import numpy as np

a = 0
b = np.pi/2
N = 500000

x = integrate.integrate(a, b, N) # Should return 0.5

print('Cython integration returns %.4f (the answer is %.4f)' % (x, 0.5))
