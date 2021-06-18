<p># acestream</p>
<h2>OVERVIEW</h2>
<p>Simple acestream engine, built on Ubuntu 18.04.</p>
<p>Engine version: 3.1.49</p>
<p>This docker provides access to the Acestream Engine API capabilites such as the HTTP stream proxy.&nbsp;</p>
<h2><strong>RUN</strong></h2>
<p><strong>Using docker-compose:</strong></p>
<p><code>services:</code><br /><code>&nbsp; acestream:</code><br /><code>&nbsp; image: proap/acestream</code><br /><code>&nbsp; restart: unless-stopped</code><br /><code>&nbsp; ports:</code><br /><code>&nbsp;&nbsp;&nbsp; - 6878:6878</code><br /><code>&nbsp; environment:</code><br /><code>&nbsp;&nbsp;&nbsp; - TZ=Europe/Paris</code><br /><code>&nbsp; volumes:</code><br /><code>&nbsp;&nbsp;&nbsp; - /path/to/host/volume:/root/.ACEStream</code></p>
<h2>USAGE</h2>
<p>For full documentation, please refer to the <a href="https://wiki.acestream.media/Engine_HTTP_API">acestream wiki</a></p>
<h4>WebUI control pannel: <a href="http://[HOST-IP]:6878/webui/app/dobrinkos/server?#proxy-server-main"><code></code></a></h4>
<p><code><a href="http://&lt;host_address&gt;:6878/webui/app/dobrinkos/server?#proxy-server-main">http://&lt;host_address&gt;:6878/webui/app/dobrinkos/server?#proxy-server-main</a></code><code></code></p>
<h4>How to get a HTTP stream:<span id="How_to_get_HTTP_stream" class="mw-headline"></span></h4>
<pre><code><a href="http://&lt;host_address&gt;:6878/ace/getstream?id=&lt;content_id&gt;">http://&lt;host_address&gt;:6878/ace/getstream?id=&lt;content_id&gt;</a><br /></code></pre>
<h2>BUILD</h2>
<p><code>docker build . -t repository_name/image_name:tag</code></p>
<h2>TODO</h2>
<ol>
<li>Bump to Ubuntu 20.04</li>
<li>Correct the webUI 'access error' that spams the containers logs. One temporary fix is to disable the logging for the container:</li>
</ol>
<p><code>services:</code><br /><code>&nbsp; acestream:</code><br /><code>(....)</code><br /><code>&nbsp;&nbsp;&nbsp; logging:</code><br /><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; driver: none</code></p>
