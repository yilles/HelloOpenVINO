CC = cl
MOVE = move
Delete = del
Create = type NUL >>

bin/main.exe: obj/main.obj lib/openvino_c.lib bin/opencv_c_wrapper.lib
	$(CC) obj/main.obj lib/openvino_c.lib bin/opencv_c_wrapper.lib
	$(MOVE) main.exe bin/.
obj/main.obj: src/main.c
	$(CC) /c src/main.c /Isrc/.
	$(MOVE) main.obj obj/.
bin/opencv_c_wrapper.lib: src/opencv_c_wrapper.cpp obj/bmp_reader.obj lib/opencv_core455.lib lib/opencv_imgcodecs455.lib lib/opencv_imgproc455.lib
	$(CC) /LD src/opencv_c_wrapper.cpp obj/bmp_reader.obj lib/opencv_core455.lib lib/opencv_imgcodecs455.lib lib/opencv_imgproc455.lib \
	 /Isrc/. /Dopencv_c_wrapper_EXPORTS /DUSE_OPENCV
	$(MOVE) opencv_c_wrapper* bin/.
obj/bmp_reader.obj: src/bmp_reader.c
	$(CC) /c src/bmp_reader.c
	$(MOVE) bmp_reader.obj obj/.

clean:
	$(Delete) /q obj\*
	$(Delete) /q bin\*
	$(Create) bin/.gitkeep
	$(Create) obj/.gitkeep