package main

import "core:fmt"
import "core:os"

main :: proc() {

 data := get_content_from_file("./test.fql")

 dataAsString:= string(data)
 fmt.println("Contents of file:  ", dataAsString)
 delete(data)
}



get_content_from_file::proc(fileName:string) -> []byte{
    file, openSuccess:= os.open(fileName, os.O_RDWR)
    defer os.close(file)

    data, readSuccess:= os.read_entire_file(file)

    return data
}