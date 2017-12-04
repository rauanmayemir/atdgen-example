open Stdio
open Atdgenexample

let () =
  let buf = In_channel.read_all "resources/blocks.json" in
  let blocks = Types_j.blocks_of_string buf in
  let block = List.hd (List.hd blocks.blocks) in
    print_endline ("block: " ^ Types_j.string_of_block block)
