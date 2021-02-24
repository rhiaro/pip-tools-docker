Docker container for updating Python dependencies with pip-tools.

Runs `pip-compile` with `--verbose` by default.

## Usage

```
sudo docker run --rm -v $(pwd):/code rhiaro/pip-tools --flags requirements_file.in
```

Pass any other pip-compile flags you want, and the name of the `.in` file.