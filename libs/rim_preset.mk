# Pre-set make macros common to the recursive makefiles

CCFLAGS += BOOST_ALL_DYN_LINK=1

# Avoid error when linking the test program
CCFLAGS += -fPIC

CCFLAGS += -D__QNX__
CCFLAGS += -D__QNXNTO__
CCFLAGS += -D__PLAYBOOK__

# Add -D__USE_ISOC99 for rounding control mechanism (boost/numeric/interval/hw_rounding.hpp)
CCFLAGS += -D__USE_ISOC99

# Prevent this from being output: "note: the mangling of 'va_list' has changed in GCC 4.4"
CCFLAGS += -Wno-psabi

# Requested by BBM team
CCFLAGS += -fno-strict-aliasing

# Functions like sync_val_compare_and_swap and sync_fetch_and_add aren't available
CCFLAGS += -DBOOST_SP_NO_SYNC

# Other flags
CCFLAGS += -D_LITTLE_ENDIAN
