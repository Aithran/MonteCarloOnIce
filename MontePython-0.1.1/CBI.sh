#!/bin/bash
python setup.py clean
echo "building"
python setup.py build
echo "installing"
python setup.py install
