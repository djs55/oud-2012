open Lwt
open Cow
open Printf
open Slides

let rt = ">>" (* required to embed it in html p4 as cant put that token directly there *)
let dl = "$"
let pres = "background-color:#ddddff"
let activity = "background-color:#ffdddd"
let rest = "background-color:#ddffdd"

let slides = [
{
  styles=[];
  content= <:html<
    <h3>Joint work with</h3>
    <ul>
	 <li>
	   <b>Dr. Richard Mortier</b>,<br />
       <div style="font-size: 80%">
       Horizon Transitional Fellow,<br />
       School of Computer Science, University of Nottingham.<br />
       www: <a href="http://www.cs.nott.ac.uk/~rmm/">http://www.cs.nott.ac.uk/~rmm</a>&nbsp; &nbsp; twitter: <a href="http://twitter.com/mort___">mort___</a>
       </div>
     </li>
     <li>
       <b>Dr. Anil Madhavapeddy</b>,<br />
       <div style="font-size: 80%">
       Senior Research Fellow,<br />
       Computer Laboratory, University of Cambridge.<br />
       www: <a href="http://anil.recoil.org/">http://anil.recoil.org</a>&nbsp; &nbsp; twitter: <a href="http://twitter.com/avsm">avsm</a>
       </div>
     </li>
    </ul>
    <p>With <b>lots</b> of help from Dr. Thomas Gazagnaire, Raphael Proust and Balraj Singh, who couldn't make it to Copenhagen.</p>

  >>
};
{
  styles=[];
  content= <:html<
    <h3>The modern software stack is mature, big and complicated</h3>
    <ul>
      <li>Hardware is abstracted
        <ul>
          <li> <b>good</b>: applications are portable</li>
          <li> <b>bad</b>: out-dated abstractions obscure common hardware features</li>
        </ul>
      </li>
      <li>Backward compatible ABIs are maintained
        <ul>
          <li> <b>good</b>: binaries continue to work</li>
          <li> <b>bad</b>: rate of innovation is reduced </li>
        </ul>
      </li>
      <li>It's difficult to get high performance while remaining portable (e.g. O_DIRECT)</li>
    </ul>
    <p><b>There is another way!</b></p>
  >>
};
{
  styles=[];
  content= <:html<
    <h3>Mirage: the other way</h3>
    <ul>
	  <li><b>&quot;The cloud is the computer&quot;</b>: now we only need simple block, network packet abstractions </li>
      <li>Protocol libraries, rather than layers
        <ul>
          <li> IP, UDP, TCP </li>
          <li> HTTP, DNS, SSH </li>
          <li> FAT32 </li>
          <li> OpenFlow </li>
        </ul>
      </li>
      <li>Modules, signatures, functors, recompilation rather than ABIs
        <ul>
          <li> Fetch libraries with <b>opam</b> </li>
          <li> Link only what you need </li>
          <li> Compile-in static configuration (no config files) </li>
          <li> Type-checker helps with API updates </li>
        </ul>
      </li>
    </ul>
  >>
};
{ styles=[];
  content= <:html<
    <h3>Example: this presentation</h3>
  >>
};
{ styles=[];
  content= <:html<
    <h3>Example: xenstore service</h3>
  >>
};
{ styles=[];
  content= <:html<
    <h3>Example: &quot;bump in the wire&quot; proxy</h3>
  >>
};
{ styles=[];
  content= <:html<
    <h3>Performance: block I/O</h3>
  >>
};
{ styles=[];
  content= <:html<
    <h3>Performance: network I/O</h3>
  >>
};
]
