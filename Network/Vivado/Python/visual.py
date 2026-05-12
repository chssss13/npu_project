import gzip
import pickle
import os
import numpy as np
import matplotlib.pyplot as plt

# mnist.pkl.gz 파일 경로 넣기
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
filename = os.path.join(SCRIPT_DIR, 'mnist.pkl.gz')
#filename = "mnist.pkl.gz"

# pkl 로드
with gzip.open(filename, 'rb') as f:
    train_data, val_data, test_data = pickle.load(f, encoding='latin1')

# test 이미지 가져오기
images = test_data[0]       # shape: (10000, 784)
labels = test_data[1]       # shape: (10000,)

# 몇 개 표시할지 설정
N = 25                      # 25개 = 5x5 grid
grid_size = int(np.sqrt(N))
plt.figure(figsize=(8, 8))
for i in range(N):
    plt.subplot(grid_size, grid_size, i+1)
    img = images[i].reshape(28, 28)
    plt.imshow(img, cmap='gray')
    plt.title(str(labels[i]))
    plt.axis('off')

plt.tight_layout()
plt.show()
