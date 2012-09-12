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
    <h3>People</h3>
    <ul>
     <li><b>Dr. David Scott</b> (me!),<br />
       <div style="font-size: 80%">
       XenServer System Architect,<br />
       Citrix <br />
       www: <a href="http://dave.recoil.org/">http://dave.recoil.org</a>&nbsp; &nbsp; twitter: <a href="http://twitter.com/mugofsoup">mugofsoup</a>
       </div>
     </li>
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
    <p>With <b>lots</b> of help from Dr. Thomas Gazagnaire, Haris Rotsos, Raphael Proust and Balraj Singh.</p>

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
          <li> IP, UDP, TCP, HTTP, DNS, SSH, FAT32, OpenFlow </li>
          <li> <a href="http://github.com/mirage/">http://github.com/mirage/</a></li>
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
    <h3>Example: xenstore service</h3>
    <ul>
      <li>A critical service on a <tt>xen</tt> host, needed by all control operations.</li>
      <li>Provides an access-controlled key-value store to all VMs.</li>
    </ul>
    <section>
    <object data="xenstore.svg" type="image/svg+xml">&nbsp;</object>
    </section>
  >>
};
{ styles=[];
  content= <:html<
    <h3>Example: this presentation</h3>
    <section>
    <object data="website.svg" type="image/svg+xml">&nbsp;</object>
    </section>
  >>
};
{ styles=[];
  content= <:html<
    <h3>Performance: block I/O</h3>
    <section>
    <object data="storage-colour.svg" type="image/svg+xml">&nbsp;</object>
    </section>
  >>
};
{ styles=[];
  content= <:html<
    <h3>Performance: network I/O</h3>
    <section>
    <object data="dns-qps.svg" type="image/svg+xml">&nbsp;</object>
    </section>
  >>
};
{ styles=[];
  content= <:html<
    <h3>Binary size</h3>
    TBD
  >>
};
{ styles=[];
  content= <:html<
    <h3>Building</h3>
      <p>Set up <b>opam</b></p>
<pre class="noprettyprint">
$str:dl$ git clone https://github.com/OCamlPro/opam
$str:dl$ (cd opam &amp;&amp; ./configure &amp;&amp; make &amp;&amp; make install)
$str:dl$ opam init default git://github.com/mirage/opam-repository
$str:dl$ opam remote -add dev git://github.com/mirage/opam-repo-dev
</pre>
     <p>Switch to xen and install mirage</p>
<pre class="noprettyprint">
$str:dl$ opam switch -install 3.12.1+mirage-xen
$str:dl$ opam switch 3.12.1+mirage-xen
$str:dl$ opam --yes install mirage mirage-net cohttp mirage-fs
</pre>
     <p>You're ready to go!</p>
  >>
};
{ styles=[];
  content= <:html<
    <h3>Summary</h3>
    <ul>
      <li>Building apps with mirage is liberating and fun
        <ul>
          <li>I even enjoyed debugging the TCP stack last weekend</li>
          <li>It makes kernel programming less of a &quot;black art&quot;</li>
        </ul>
      </li>
      <li>Give <b>opam</b> a try</li>
      <li>Be explicit about the interfaces your app needs: do you need all of Unix or just a network stack?
        <ul>
          <li> As well as being mirage-friendly, this also makes your app easier to test through &quot;mocks&quot;</li>
        </ul>
      </li>
    </ul>
  >>
};
]
