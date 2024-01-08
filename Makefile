CXX        := g++
CXXFLAGS   := -std=c++17 -g
SRCDIR     := ./src
LIBDIR     := ./lib
BUILDDIR   := ./build
BINDIR     := ./bin
OUTPUT     := jayfray 

SRC_SRCS   := $(wildcard ./src/*.cpp)
SRC_OBJS   := $(addprefix $(BUILDDIR)/, $(notdir $(SRC_SRCS:.cpp=.o)))
LIB_SRCS   := $(wildcard ./lib/*.cpp)
LIB_OBJS   := $(addprefix $(BUILDDIR)/, $(notdir $(LIB_SRCS:.cpp=.o)))

#$(info $(SRC_OBJS))
#$(info $(LIB_OBJS))

.PHONY: all clean run

all : $(OUTPUT)

$(OUTPUT): $(SRC_OBJS) $(LIB_OBJS)
	$(CXX) -o ./$(BINDIR)/$(OUTPUT) ./$(BUILDDIR)/*.o

$(SRC_OBJS): $(SRC_SRCS) 
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(LIB_OBJS): $(LIB_SRCS) 
	$(CXX) $(CXXFLAGS) -c $< -o $@

run: $(OUTPUT)
	cd ./$(BINDIR) && ./$(OUTPUT) && cd ..

clean:
	rm -f ./$(BUILDDIR)/*.o ./$(BINDIR)/$(OUTPUT)
