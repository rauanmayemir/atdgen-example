open Stdio
open Atdgenexample

let parseBlock1 () =
  let buf = In_channel.read_all "resources/blocks.json" in
  let blocks = Types_j.blocks_of_string buf in
  let block = blocks.blocks |> List.hd |> List.hd in
    Alcotest.(check string)
      "Parse block 1"
      "BMLrsXzgao8fTcEkbEacWxCMeh9VpiDNtwaKZKzkiwCCU6K4Wux"
      block.hash

let () = Alcotest.run
  "Atgen-example"
  ["AtdgenTests", [
    "blocks_decoding", `Slow, parseBlock1;
  ];]
