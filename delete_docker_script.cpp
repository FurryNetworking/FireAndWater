#include <cppfs/fs.h>
#include <cppfs/FileHandle.h>

int main() {
  FileHandle file = fs::open("get-docker.sh");
  file.remove();
  return 0;
}

