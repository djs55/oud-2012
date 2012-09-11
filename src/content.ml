open Cow
open Printf
open Slides

let rt = ">>"

let header =[ {
  styles=[Title];
  content= <:xml<
   <h1>Programming the Xen Cloud using OCaml</h1>
   <br />
   1430-1450<br />
   Ocaml Users and Developers workshop (OUD),<br />
   Copenhagen, Denmark, Sep 2012
  >>;
}]

let footer = [{
  styles=[];
  content= <:xml<
    <h1>The End
    <br /><small>happy hacking</small>
    </h1>
  >>
}]
let articles = List.flatten [
  header;
  Intro.slides;
  footer;
]

let presentation = {
  topic="OUD 2012: Programming the Xen Cloud using OCaml";
  layout=Regular;
  articles;
}

let body =
  let slides = Slides.slides presentation in
  printf "%d slides\n%!" (List.length articles);
  Xml.to_string slides
