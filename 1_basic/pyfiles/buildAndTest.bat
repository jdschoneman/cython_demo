REM compile the Cython file
python setup.py build_ext --inplace

REM make sure it works
python demo.py
pause