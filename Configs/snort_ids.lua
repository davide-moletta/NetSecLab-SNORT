---------------------------------------------------------------------------
-- Snort++ configuration
---------------------------------------------------------------------------

HOME_NET = '192.168.77.0/24'

EXTERNAL_NET = 'any'

--include '/usr/local/etc/snort/snort_defaults.lua'

default_variables =
{
    nets =
    {
        HOME_NET = HOME_NET,
        EXTERNAL_NET = EXTERNAL_NET
    }
}

---------------------------------------------------------------------------
-- default wizard
---------------------------------------------------------------------------

http_methods =
{
    'GET', 'HEAD', 'POST', 'PUT', 'DELETE', 'TRACE', 'CONNECT',
    'VERSION_CONTROL', 'REPORT', 'CHECKOUT', 'CHECKIN', 'UNCHECKOUT',
    'MKWORKSPACE', 'LABEL', 'MERGE', 'BASELINE_CONTROL',
    'MKACTIVITY', 'ORDERPATCH', 'ACL', 'PATCH', 'BIND', 'LINK',
    'MKCALENDAR', 'MKREDIRECTREF', 'REBIND', 'UNBIND', 'UNLINK',
    'UPDATEREDIRECTREF', 'PROPFIND', 'PROPPATCH', 'MKCOL', 'COPY',
    'MOVE', 'LOCK', 'UNLOCK', 'SEARCH', 'BCOPY', 'BDELETE', 'BMOVE',
    'BPROPFIND', 'BPROPPATCH', 'POLL', 'UNSUBSCRIBE', 'X_MS_ENUMATTS',
    'NOTIFY * HTTP/', 'OPTIONS * HTTP/', 'SUBSCRIBE * HTTP/', 'UPDATE * HTTP/',
    '* * HTTP/'
}

default_wizard =
{
    spells =
    {
        { service = 'http', proto = 'tcp',
          to_server = http_methods, to_client = { 'HTTP/' } },
    }
}

---------------------------------------------------------------------------
-- 2. configure inspection
---------------------------------------------------------------------------
stream = { }
stream_ip = { }
stream_icmp = { }
stream_tcp = { }
stream_udp = { }

dns = { }
http_inspect = { }
http2_inspect = { }

---------------------------------------------------------------------------
-- 3. configure bindings
---------------------------------------------------------------------------

wizard = default_wizard

binder =
{
    -- port bindings required for protocols without wizard support
    { when = { proto = 'udp', ports = '53', role='server' },  use = { type = 'dns' } },
    { when = { proto = 'tcp', ports = '53', role='server' },  use = { type = 'dns' } },
    { when = { service = 'dns' },              use = { type = 'dns' } },
    { when = { service = 'http' },             use = { type = 'http_inspect' } },
    { when = { service = 'http2' },            use = { type = 'http2_inspect' } },

    { use = { type = 'wizard' } }
}


---------------------------------------------------------------------------
-- 5. configure detection
---------------------------------------------------------------------------

ips =
{
    variables = default_variables
}



