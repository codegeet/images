# image

## Overview
Docker image to safely run code.

#### Coderunner
The [coderunner](https://github.com/codegeet/coderunner) installed inside a Docker container compiles and runs the code.

## Example

Pull Docker image:

```bash
docker pull codegeet/python:latest
```

Run code inside a Docker container:

```bash
echo '{       
  "language_id": "python",
  "files": [{
    "name": "main.py",
    "content": "print(\"Hello World!!!\")"
  }]
}' | docker run --rm -i -u codegeet -w /home/codegeet codegeet/python:latest
```

##### Result
```json
{"std_out":"Hello World!!!","std_err":"","error":""}
```
