import ltspy3
import sys
import subprocess
import matplotlib.pyplot as plt
import numpy as np

ret=subprocess.call(['/opt/cxoffice/bin/wine', '--bottle', 'LTspice', '/home/adriang/.cxoffice/LTspice/drive_c/users/crossover/AppData/Local/Programs/ADI/LTspice/LTspice.exe', '-b', 'c02ex17s01.cir'])

if ret!=0:
   sys.exit()

spicedata=ltspy3.SimData('c02ex17s01.raw')

time_idx = spicedata.variables.index(b'time')
ir1_idx = spicedata.variables.index(b'I(R1)')
ir2_idx = spicedata.variables.index(b'I(R2)')

plt.close('all')
fig,ax=plt.subplots(1,1)
ax.plot(spicedata.values[time_idx][0],spicedata.values[ir1_idx][0]*1E3)
ax.set_xlabel('Time, s')
ax.set_ylabel('Current, mA')
for stepidx in range(spicedata.nosteps):
   ax.plot(spicedata.values[time_idx][0],spicedata.values[ir2_idx][stepidx]*1E3)

ax.legend(['I(R1)', 'I(R2=10$\Omega$)', 'I(R2=400$\Omega$)', 'I(R2=1000$\Omega$)']);
fig.show()
plt.ion()
ret=input("")
fig.savefig('c02ex17i03.pdf', bbox_inches='tight')
