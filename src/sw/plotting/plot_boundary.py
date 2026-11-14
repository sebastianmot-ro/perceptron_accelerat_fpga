from model.golden_model_perceptron import train_model_on_image
import matplotlib.pyplot as plt
import numpy as np
from pathlib import Path


IMG_PATH = 'dataset/test06.bmp'
weights, biases,red_pixels,blue_pixels,max_epochs  = train_model_on_image(IMG_PATH)

#unzip xs and ys
red_x, red_y = zip(*red_pixels) 
blue_x, blue_y = zip(*blue_pixels)

#create plot
plt.figure(figsize=(6,6))

#add red pixels and blue pixels
plt.scatter(red_x,red_y,color='red',label ='Red(+1)', s=20)
plt.scatter(blue_x, blue_y, color='blue', label='Blue (-1)', s=20)

#calculate the line (w[0] * x + w[1] * y + b  = 0)
if abs(weights[1]) > 1e-6: #for vertical lines, in case of division by 0
    x_vals = np.array([0.0, 1.0])
    y_vals = -(weights[0] * x_vals + biases) / weights[1]
    plt.plot(x_vals,y_vals,color="black", linewidth =2, label = "decision boundary")
else: #perfect vertical line
    x_vertical = -biases/weights[0]
    plt.axvline(x=x_vertical,color="black", linewidth =2,label = "decision boundary")
    
#adjust sizes for plot
plt.xlim(0, 1)
plt.ylim(0, 1)
plt.gca().invert_yaxis()
    
plt.xlabel('X (normalized)')
plt.ylabel('Y (normalized)')
plt.legend()
plt.grid(True, linestyle='--', alpha=0.5)

#save to path
output_dir = Path(__file__).resolve().parent
output_path = output_dir / f'decision_boundary_{IMG_PATH.strip('dataset/.bmp')}_{max_epochs}_epochs'
plt.savefig(output_path, dpi=150, bbox_inches='tight')
plt.close()
    

