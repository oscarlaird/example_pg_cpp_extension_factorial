# build from multiple source files specified in OBJS
MODULE_big = factorial
EXTENSION = factorial
EXTVERSION = 1.0
DATA = $(wildcard sql/*--*.sql)  # migration scripts
DOCS = README.md
OBJS = src/factorial.o
HEADERS = 

CXX = g++
CXXFLAGS = -std=c++11

# create the load script from factorial.sql
all: sql/$(EXTENSION)--$(EXTVERSION).sql
sql/$(EXTENSION)--$(EXTVERSION).sql: sql/$(EXTENSION).sql
	cp $< $@

# include global pgxs makefile
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)