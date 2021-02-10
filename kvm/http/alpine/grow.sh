#!/bin/sh

growdisk /dev/vda 3
resize2fs /dev/vda3
