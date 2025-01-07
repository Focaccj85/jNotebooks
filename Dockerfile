# Use the official Jupyter Notebook image from Docker Hub
FROM jupyter/base-notebook

# Set the working directory in the container
WORKDIR /home/jovyan

# Install additional dependencies (Python packages, system libraries, etc.)
RUN pip install --no-cache-dir \
    pandas \
    matplotlib \
    seaborn \
    scikit-learn \
    scipy \
    jupyterlab

# Expose port 8888 for Jupyter Notebook
EXPOSE 8888

# Set the command to start Jupyter Notebook without requiring a token or password
CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.password=''"]