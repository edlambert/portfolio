import glob
import os
import time
import datetime

#os.rename('test3.py', 'test3.py')
video_list = glob.glob('*.avi')

for video in video_list:
    print video
    creation_timestamp = os.path.getctime(video)
    time_string = time.ctime(creation_timestamp)
    print time_string
    time_ = datetime.datetime.utcfromtimestamp(creation_timestamp)
    time_string = str(time_)
    print time_string.replace(':', '-')

    name_parts = video.split('.')
    new_name = time_string.replace(':', '-') + ' '+ name_parts[0] + '.' + name_parts[1]

    print new_name
    os.stat(video)
    os.rename(video, new_name)
    junk = raw_input('...')
    

