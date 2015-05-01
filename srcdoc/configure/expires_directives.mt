? my $ctx = $main::context;
? $_mt->wrapper_file("wrapper.mt", "Configure", "Expires Directives")->(sub {

<p>
This document describes the configuration directives of the expires handler.
</p>

<?= $_mt->render_file("directive.mt", {
    name    => "expires",
    levels  => [ qw(global host path) ],
    desc    => <<'EOT',
<p>
An optional directive for setting the <code>Cache-Control: max-age=</code> header.
</p>
<ul>
<li>if the argument is <code>OFF</code> the feature is not used
<li>if the value is <code><i>NUMBER</i> <i>UNIT</i></code> then the header is set
<li>the units recognized are: <code>second</code>, <code>minute</code>, <code>hour</code>, <code>day</code>, <code>month</code>, <code>year</code>
<li> the units can also be in plural forms
</ul>

<div class="example">
<div class="caption">Example. Set <code>Cache-Control: max-age=86400</div>
<pre><code>expires: 1 day</code></pre>
</div>
EOT
}) ?>

? })