<img width="285" alt="image" src="https://github.com/vishal092002/is-373assignment-/assets/92801789/b5aadebd-84bb-49c4-9109-831f48e8bdc5">


docker build - t qrcode . 
docker run -v ${pwd}:/home/myuser qrcode
docker run -v ${pwd}:/home/myuser qrcode python hello.py