import cv2

cam = cv2.VideoCapture(0)

def repeat(n):

    s, img = cam.read()
    if s:
        cv2.imshow("cam-test",img)
        if cv2.waitKey(10) != -1:
            edges = cv2.Canny(img,100,200)
            cv2.imwrite('source'+ str(n) +'.png',img)
            cv2.imwrite('edges'+ str(n) +'.png',edges)

        

cv2.namedWindow("cam-test",cv2.CV_WINDOW_AUTOSIZE)
n=0
while True:
    repeat(n)
    n+=1
    
cv2.destroyWindow("cam-test")
