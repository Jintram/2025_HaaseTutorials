

# libraries
import numpy as np
from skimage.io import imread
import stackview

# load data
# cells3d is a 4d image
from skimage.data import cells3d


image = cells3d()[30,0]
image.shape

stackview.insight(image)

