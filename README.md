# image

## Overview
Docker image to safely run code.

#### Coderunner
The [coderunner](https://github.com/codegeet/coderunner) installed inside a Docker container compiles and runs the code.

## Example

```bash
echo '{       
"language": "JAVA",
"files": [{
"name": "Main.java",
"content": "class Main {    public static void main(String[] args) {    System.out.print(\"Hello World!!!\"); }   }"
}]
}' | docker run --rm -i -u codegeet -w /home/codegeet codegeet
```

##### Result
```json
{"stdout":"Hello World!!!","stderr":"","error":""}
```
