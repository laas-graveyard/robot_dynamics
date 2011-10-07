include ../tools/variables.mk
include ../tools/rules.mk

JRL_MATHTOOLS=$(shell rospack find jrl-mathtools)/$(PKGCONFIGDIR)
JRL_MAL=$(shell rospack find jrl-mal)/$(PKGCONFIGDIR)
ABSTRACT_ROBOT_DYNAMICS=\
 $(shell rospack find abstract-robot-dynamics)/$(PKGCONFIGDIR)
JRL_DYNAMICS=$(shell rospack find jrl-dynamics)/$(PKGCONFIGDIR)

PKG_CONFIG_PATH=$(JRL_MATHTOOLS):$(JRL_MAL):$(ABSTRACT_ROBOT_DYNAMICS):$(JRL_DYNAMICS)

RPATHS =$(shell rospack find jrl-mathtools)/$(LIBDIR):$(shell rospack find jrl-mal)/$(LIBDIR):$(shell rospack find abstract-robot-dynamics)/$(LIBDIR):$(shell rospack find jrl-dynamics)/$(LIBDIR)
