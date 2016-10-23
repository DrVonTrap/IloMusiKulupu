#!/bin/bash

mkdir Dependencies

pushd Dependencies

echo "gtest"
git clone git@github.com:google/googletest.git --depth=1
pushd googletest
	pushd googletest
		cmake .
		make -j4
	popd
	pushd googlemock
		cmake .
		make -j4
	popd
popd

echo "Wren"
git clone git@github.com:munificent/wren.git --depth=1
pushd wren
	make -j4
popd

echo "FredLib"
git clone git@github.com:CodogoFreddie/FredLib.git --depth=1
