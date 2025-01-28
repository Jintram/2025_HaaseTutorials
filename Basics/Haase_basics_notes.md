
# Notes about 'basics' part

_This is a very brief summary, which focuses on what libraries and commands Haase et al. use to perform certain common operations._

## Opening images

Haase et al. seems to mostly use the `skimage` library. To read a file:

```
import skimage.io as skio
skio.imread('../some/image.jpg')
```

### Plotting images

According to Haase et al., the `plt.imshow` command isn't ideal, as e.g.
- not ideal with multi channel data
- difficult with intensity ranges

Instead, they use, 
```
import microfilm.microplot as mimi
mimi.microshow(image)
```

## Built-in datasets, stackview

See `haase_imageanalysis_basics.py`.



