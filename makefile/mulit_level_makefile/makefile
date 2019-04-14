SUBDIRS = ./protos ../src
.PHONY:all
all:
	@list='$(SUBDIRS)';for subdir in $$list; do \
		cd $$subdir && make; \
	done
	
.PHONY:clean
clean:
	@list='$(SUBDIRS)'; for subdir in $$list; do \
		echo "Clean in $$subdir";\
		cd $$subdir && make clean;\
	done
	rm -rf ./target
