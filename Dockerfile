#
FROM python:3.11

# x-release-please-start-version
COPY ./out/fastapi_test-0.0.0-py3-none-any.whl ./fastapi_test-0.0.0-py3-none-any.whl
# x-release-please-end

# x-release-please-start-version
RUN pip install --no-cache-dir --upgrade fastapi_test-0.0.0-py3-none-any.whl
# x-release-please-end

#
CMD ["api"]