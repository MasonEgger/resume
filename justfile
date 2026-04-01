# Build the Docker image with LaTeX dependencies
build-image:
    docker build -t resume .

# Compile the resume PDF
build:
    docker run --mount type=bind,source=/home/mmegger/Code/MasonEgger/resume,target=/data resume xelatex resume.tex
