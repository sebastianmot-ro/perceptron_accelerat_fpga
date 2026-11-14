from PIL import Image
import numpy as np


#1. extracting data from image

def get_pixels_from_image(img_path: str):
    """
    Returns tuple ( red_pixels_normalized, blue_pixels_normalized )
    where red_pixels_normalized and blue_pixels_normalized look like this:
    [(red_x1, red_y1), (red_x2, red_y2), ...]
    [(blue_x1, blue_y1), (blue_x2, blue_y2), ... ] 
    
    """
    
    img = Image.open(img_path, mode ='r')
    if img.mode != "RGB":
        img = img.convert("RGB")
    img_array = np.asarray(img)
    
    # how to interpret the numpy array values:
    # white pixel: [255,255,255]
    # red pixel: [255,0,0]
    # blue pixel: [0,0,255]

    #image size
    height,width,channel = img_array.shape
    #print(f"image h,w,channel: {height}, {width}, {channel}")

    R = img_array[:, :, 0] #for all rows, for all columns, take all reds (index 0 is R (RGB mode from pillow))
    G = img_array[:, :, 1]
    B = img_array[:, :, 2]
    
    red_mask = (R>200) & (G<10) & (B<10)
    green_mask = (R<10) & (G>200) & (B<10)
    blue_mask = (R<10) & (G<10) & (B>200)

    x_red_coords, y_red_coords = np.where(red_mask)
    #convert from np.int64 to normal ints
    red_pixels_coords = [(int(x), int(y)) for x,y in zip(x_red_coords,y_red_coords)]

    x_blue_coords, y_blue_coords = np.where(blue_mask)
    blue_pixels_coords = [(int(x), int(y)) for x,y in zip(x_blue_coords,y_blue_coords)]

    #normalize data
    red_pixels_normalized = [(x/(width-1), y/(width-1)) for x,y in red_pixels_coords]
    blue_pixels_normalized = [(x/(width-1), y/(width-1)) for x,y in blue_pixels_coords]
    
    return red_pixels_normalized, blue_pixels_normalized


        


