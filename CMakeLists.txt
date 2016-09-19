cmake_minimum_required(VERSION 2.8)
project(word2vec)

# Flags from original makefile
# CFLAGS = -O2 -Wall -funroll-loops

find_package (Threads)

set(LIBRARIES ${CMAKE_THREAD_LIBS_INIT})

add_executable(word2vec word2vec.c)
target_link_libraries(word2vec ${LIBRARIES})

add_executable(word2phrase word2phrase.c)
target_link_libraries(word2phrase ${LIBRARIES})

add_executable(distance distance.c)
target_link_libraries(distance ${LIBRARIES})

add_executable(word-analogy word-analogy.c)
target_link_libraries(word-analogy ${LIBRARIES})

add_executable(compute-accuracy compute-accuracy.c)
target_link_libraries(compute-accuracy ${LIBRARIES})
