---------------------------------------------------------------------------
-- Snort++ configuration
---------------------------------------------------------------------------

daq =
{
   modules =
   {
       {
           name = 'afpacket',
           
           mode = 'inline',
	   variables =
	   {
		'fanout_type=hash'
	   }
       },
   },
   module_dirs =
   {
       '/usr/local/lib/daq/',
   }
}

ips =
{
    mode = inline,
    variables = default_variables,
    --action_override = 'reject',

--    rules =
--    [[ 
--	include /root/snort/rules/exercise20.rules
--    ]]
    -- use this to enable decoder and inspector alerts
    --enable_builtin_rules = true,

    -- use include for rules files; be sure to set your path
    -- note that rules files can include other rules files
    -- (see also related path vars at the top of snort_defaults.lua)

}
