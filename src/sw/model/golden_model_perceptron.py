from image_processing.pixel_processing import get_pixels_from_image
import numpy as np

def train_model_on_image(img_path : str):
    """
    Train an Online Perceptron model on a specific image    
    returns weights, biases, red_pixels, blue_pixels
    """
    
    #input data
    red_pixels, blue_pixels = get_pixels_from_image(img_path=img_path)
    X = np.array(red_pixels + blue_pixels, dtype=np.float32) # build the input matrix of shape (N,2)
    y = np.array([1] * len(red_pixels) + [-1] * len(blue_pixels), dtype=np.float32) # build the label matrix of shape (N,). labeling 1 and -1 for a Delta Rule Perceptron
    w = np.zeros(2,dtype=np.float32)
    b = np.float32(0.0)
    learning_rate = 0.01
    
    # training
    max_epochs = 1000
    for epoch in range(max_epochs):
        indices = np.random.permutation(len(X)) #create a random permutation of indices of the points
        X_shuffled = X[indices] 
        y_shuffled = y[indices]
        
        for x_i, y_i in zip(X_shuffled,y_shuffled):
            pred = np.dot(x_i, w) + b #forward pass
            delta = y_i - pred  #delta rule (error)
            w = w + learning_rate * delta * x_i #backward prop
            b = b + learning_rate * delta #bias update

    return w,b,red_pixels,blue_pixels,max_epochs
    
    
        
    
    
    
    
    
