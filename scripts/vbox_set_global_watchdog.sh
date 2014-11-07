#!/bin/sh
vbox_set_global_extradata() {
	local key=$1
	local value=$2
	VBoxManage setextradata global $key $value
}

prefix="VBoxInternal2/Watchdog/BalloonCtrl"
vbox_set_global_extradata $prefix/Balloon 2048
vbox_set_global_extradata $prefix/BalloonIncrementMB 128
vbox_set_global_extradata $prefix/BalloonDecrementMB 64
