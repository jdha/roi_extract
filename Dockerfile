FROM continuumio/miniconda3

WORKDIR /src/roi_extract

COPY environment.yml /src/roi_extract/

RUN conda install -c conda-forge gcc python=3.10 \
    && conda env update -n base -f environment.yml

COPY . /src/roi_extract

RUN pip install --no-deps -e .
