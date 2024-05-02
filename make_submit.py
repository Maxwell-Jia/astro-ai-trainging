import numpy as np
import pandas as pd
import os

output_dir = "outputs/spect-base"
predictions = np.load(os.path.join(output_dir, "predictions.npy"))
pred_labels = np.argmax(predictions, axis=1)
# predictions label range from 0 to 2, but submit needs 1 to 3
pred_labels += 1
obgid = np.arange(1, predictions.shape[0]+1)

submit = pd.DataFrame({"obgid": obgid, "prediction": pred_labels})
submit.to_csv("submit.csv", index=False)