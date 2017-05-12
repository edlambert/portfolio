import numpy as np
import cv2
import time
import scipy as sp

img1 = cv2.imread('res/box.png',0)
img2 = cv2.imread('res/box_in_scene.png',0)

orb = cv2.ORB()

start = time.time()

#find keypoints and descriptors with ORB
kp1, des1 = orb.detectAndCompute(img1, None)
kp2, des2 = orb.detectAndCompute(img2, None)

end = time.time()
print "feature extraction time",end - start, "ms"


#brute force hamming distance matcher
bf = cv2.BFMatcher(cv2.NORM_HAMMING, crossCheck = True)

start = time.time()
matches = bf.match(des1,des2)
end = time.time()
print "brute force matching time",end - start, "ms"

#find transformation



# visualize the matches
print '#matches:', len(matches)
dist = [m.distance for m in matches]

print 'distance: min: %.3f' % min(dist)
print 'distance: mean: %.3f' % (sum(dist) / len(dist))
print 'distance: max: %.3f' % max(dist)

# threshold: half the mean
thres_dist = (sum(dist) / len(dist)) * 0.5

# keep only the reasonable matches
sel_matches = [m for m in matches if m.distance < thres_dist]

print '#selected matches:', len(sel_matches)
# #####################################
# visualization
h1, w1 = img1.shape[:2]
h2, w2 = img2.shape[:2]
view = np.zeros((max(h1, h2), w1 + w2, 3), np.uint8)
view[:h1, :w1, 0] = img1
view[:h2, w1:, 0] = img2
view[:, :, 1] = view[:, :, 0]
view[:, :, 2] = view[:, :, 0]

for m in sel_matches:
    # draw the keypoints
    print m.queryIdx, m.trainIdx, m.distance
    color = tuple([np.random.randint(0, 255) for _ in xrange(3)])
    cv2.line(view, (int(kp1[m.queryIdx].pt[0]),int(kp1[m.queryIdx].pt[1])), (int(kp2[m.trainIdx].pt[0] + w1), int(kp2[m.trainIdx].pt[1])), color, 1)
    cv2.circle(view,(int(kp1[m.queryIdx].pt[0]),int(kp1[m.queryIdx].pt[1])),3,color)
    #cv2.line(view, 1,2,color)
    #cv2.line(view, k1[m.queryIdx].pt, (k2[m.trainIdx].pt[0] + w1, k2[m.trainIdx].pt[1]), color)
    
cv2.imshow("view", view)

cv2.waitKey()
cv2.destroyAllWindows()
