# Variables
PYTHON=python3
SRC_DIR=src
DATA_DIR=data

# Targets
.PHONY: all clean train test predict

all: train test predict

train:
    $(PYTHON) $(SRC_DIR)/train.py --data_dir $(DATA_DIR)

test:
    $(PYTHON) $(SRC_DIR)/test.py --data_dir $(DATA_DIR)

predict:
    $(PYTHON) $(SRC_DIR)/predict.py --data_dir $(DATA_DIR)

clean:
    rm -rf $(DATA_DIR)/processed
