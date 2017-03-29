ifeq ($(CONFIG_MVEBU_SWITCH_DRIVER_DSA),y)
  USE_DSA:=true
else
  USE_DSA:=false
endif

define Package/base-files/install-target
	sed -i -e 's/@USE_DSA@/$(USE_DSA)/' $(1)/etc/board.d/*
endef