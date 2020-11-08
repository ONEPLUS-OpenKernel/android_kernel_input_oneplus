#
# Makefile for the touchscreen drivers.
#

ifeq ($(CONFIG_INPUT_TOUCHSCREEN), y)
	ifeq ($(CONFIG_ARCH_LITO), y)
	include $(srctree)/techpack/oneplus-input/config/lito.conf
	endif
	
	ifeq ($(CONFIG_ARCH_LITO), y)
	LINUXINCLUDE    += -include $(srctree)/techpack/oneplus-input/config/lito.h
	endif
endif

obj-$(CONFIG_INPUT_TOUCHSCREEN) += touchscreen/ 
obj-$(CONFIG_INPUT_FINGERPRINT) += fingerprint/
