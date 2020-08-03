# extracting from single java file
TRAIN_DIR=data/java_very_small_raw/training
VAL_DIR=java_very_small_raw/validation
TEST_DIR=data/java_very_small_raw/test
DATASET_NAME=java_very_small
MAX_DATA_CONTEXTS=1000
MAX_CONTEXTS=200
SUBTOKEN_VOCAB_SIZE=186277
TARGET_VOCAB_SIZE=26347
NUM_THREADS=32
PYTHON=python3
FILE_NAME=AboutBlock.java
EG_OUTPUT_FILE=preprocess_eg_out.txt
RAIN_DATA_FILE=${DATASET_NAME}.train.raw.txt
VAL_DATA_FILE=${DATASET_NAME}.val.raw.txt
TEST_DATA_FILE=${DATASET_NAME}.test.raw.txt
EXTRACTOR_JAR=JavaExtractor/JPredict/target/JavaExtractor-0.0.1-SNAPSHOT.jar

# command
${PYTHON} JavaExtractor/extract.py --file ${FILE_NAME} --max_path_length 8 --max_path_width 2 --num_threads ${NUM_THREADS} --jar ${EXTRACTOR_JAR} > ${EG_OUTPUT_FILE}