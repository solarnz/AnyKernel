all: 
	rm -f kernel/zImage
	rm -f system/lib/modules/*
	rm -f *.zip
	cp ../arch/arm/boot/zImage kernel/zImage;
	cd .. && find -name \*.ko -exec cp {} AnyKernel/system/lib/modules/ \;
	zip -r Tiamat-Kernel-Xoom-$(REVISION).zip *
