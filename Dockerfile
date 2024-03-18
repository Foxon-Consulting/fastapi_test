#
FROM python:3.12

# x-release-please-start-version
ARG PREFIX="fastapi_test-0.0.0"
# x-release-please-end

COPY ./out/$PREFIX-py3-none-any.whl ./$PREFIX-py3-none-any.whl

RUN pip install --no-cache-dir --upgrade $PREFIX-py3-none-any.whl

#
CMD ["api"]
