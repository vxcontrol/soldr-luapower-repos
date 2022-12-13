print("This is file for modules testing")
print("It should work on any system")
print("----------------")
local nmodule = 0
package.path = package.path .. ";./?.lua;./?/init.lua"
local ffi = require'ffi'

-- amqp testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is amqp testing:")
print(require("amqp") and "ok" or "failed")
print("----------------")

-- bundle testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is bundle testing:")
print(require("bundle") and "ok" or "failed")
-- TODO: here need to fix bug with loading libraries in luapower.lua
-- require("bundle_test")
print("----------------")

-- coro testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is coro testing:")
print(require("coro") and "ok" or "failed")
require("coro_test")
print("----------------")

-- crc32 testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is crc32 testing:")
print(require("crc32") and "ok" or "failed")
print("----------------")

-- cjson testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is cjson testing:")
print(require("cjson") and "ok" or "failed")
print("----------------")

-- dynasm testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is dynasm testing:")
print(require("dynasm") and "ok" or "failed")
print("----------------")

-- events testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is events testing:")
print(require("events") and "ok" or "failed")
print("----------------")

-- expat testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is expat testing:")
print(require("expat") and "ok" or "failed")
require("expat_test")
print("----------------")

-- ffi_reflect testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is ffi_reflect testing:")
print(require("ffi_reflect") and "ok" or "failed")
-- TODO: here need to fix bug in line 105
-- require("ffi_reflect_test")
print("----------------")

-- fribidi testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is fribidi testing:")
print(require("fribidi") and "ok" or "failed")
require("fribidi_test")
print("----------------")

-- fs testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is fs testing:")
print(require("fs") and "ok" or "failed")
require("fs_test")
print("----------------")

-- genx testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is genx testing:")
print(require("genx") and "ok" or "failed")
require("genx_demo")
print("----------------")

-- glue testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is glue testing:")
print(require("glue") and "ok" or "failed")
require("glue_test")
print("----------------")

-- heap testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is heap testing:")
print(require("heap") and "ok" or "failed")
-- TODO: here need to fix bug with explicit importing pp module in line 100
-- require("heap_test")
print("----------------")

-- inspect testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is inspect testing:")
print(require("inspect") and "ok" or "failed")
print("----------------")

-- jsonschema testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is jsonschema testing:")
print(require("jsonschema") and "ok" or "failed")
print("----------------")

-- lanes testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is lanes testing:")
print(require("lanes") and "ok" or "failed")
print("----------------")

-- lfs testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is lfs testing:")
print(require("lfs") and "ok" or "failed")
-- TODO: here need to fix bug "unprotected error in call to Lua API (setmode: closed file)"
-- require("lfs_test")
print("----------------")

-- libb64 testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is libb64 testing:")
print(require("libb64") and "ok" or "failed")
require("libb64_test")
print("----------------")

-- libcurl testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is libcurl testing:")
print(require("libcurl") and "ok" or "failed")
require("libcurl_test")
print("----------------")

-- lightningmdb testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is lightningmdb testing:")
print(require("lightningmdb") and "ok" or "failed")
require("lightningmdb_test")
print("----------------")

-- linkedlist testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is linkedlist testing:")
print(require("linkedlist") and "ok" or "failed")
require("linkedlist_test")
print("----------------")

-- lrucache testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is lrucache testing:")
print(require("lrucache") and "ok" or "failed")
print("----------------")

-- lua-openssl testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is lua-openssl testing:")
print(require("openssl") and "ok" or "failed")
print(require("openssl").digest and "digest - ok" or "failed")
print(require("openssl").cipher and "cipher - ok" or "failed")
print(require("openssl").bio and "bio    - ok" or "failed")
print(require("openssl").cms and "cms    - ok" or "failed")
print(require("openssl").x509 and "x509   - ok" or "failed")
print(require("openssl").engine and "engine - ok" or "failed")
print(require("crypto") and "crypto - ok" or "failed")
print(require("ssl") and "ssl    - ok" or "failed")
print(require("https") and "https  - ok" or "failed")
print("----------------")

-- lsqlite3 testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is lsqlite3 testing:")
print(require("lsqlite3") and "ok" or "failed")
print("----------------")

-- luastate testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is luastate testing:")
print(require("luastate") and "ok" or "failed")
require("luastate_test")
print("----------------")

-- md5 testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is md5 testing:")
print(require("md5") and "ok" or "failed")
require("md5_test")
print("----------------")

-- minizip testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is minizip testing:")
print(require("minizip") and "ok" or "failed")
require("minizip_test")
print("----------------")

-- mustache testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is mustache testing:")
print(require("mustache") and "ok" or "failed")
require("mustache_test")
print("----------------")

-- path testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is path testing:")
print(require("path") and "ok" or "failed")
require("path_test")
print("----------------")

-- pp testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is pp testing:")
print(require("pp") and "ok" or "failed")
-- TODO: here need to fix bug with format converting in line 8 (to 9223372036854775808ULL)
-- require("pp_test")
print("----------------")

-- prettycjson testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is prettycjson testing:")
print(require("prettycjson") and "ok" or "failed")
print("----------------")

-- pthread testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is pthread testing:")
print(require("pthread") and "ok" or "failed")
require("pthread_test")
print("----------------")

-- protobuf testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is protobuf testing:")
print(require("protoc") and "ok" or "failed")
require("protoc_test")
print("----------------")

-- ringbuffer testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is ringbuffer testing:")
print(require("ringbuffer") and "ok" or "failed")
require("ringbuffer_demo")
print("----------------")

-- reader testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is reader testing:")
print(require("reader") and "ok" or "failed")
require("reader_test")
print("----------------")

-- rex_pcre2 testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is rex_pcre2 testing:")
print(require("rex_pcre2") and "ok" or "failed")
require("rex_run_test")
print("----------------")

-- sha2 testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is sha2 testing:")
print(require("sha2") and "ok" or "failed")
require("sha2_test")
print("----------------")

-- socket testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is socket testing:")
print(require("socket") and "ok" or "failed")
print("----------------")

-- socketloop testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is socketloop testing:")
print(require("socketloop") and "ok" or "failed")
-- TODO: here need to fix bug with loading libraries through bundle in lanes module
-- require("socketloop_test")
print("----------------")

-- struct testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is struct testing:")
print(require("struct") and "ok" or "failed")
-- TODO: here need to fix bug in line 170
-- require("struct_test")
print("----------------")

-- thread testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is thread testing:")
print(require("thread") and "ok" or "failed")
require("thread_test")
print("----------------")

-- time testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is time testing:")
print(require("time") and "ok" or "failed")
print("----------------")

-- tuple testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is tuple testing:")
print(require("tuple") and "ok" or "failed")
require("tuple_test")
print("----------------")

-- unit testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is unit testing:")
print(require("unit") and "ok" or "failed")
print("----------------")

-- unixperms testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is unixperms testing:")
print(require("unixperms") and "ok" or "failed")
print("----------------")

-- uri testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is uri testing:")
print(require("uri") and "ok" or "failed")
require("uri_test")
print("----------------")

-- utf8 testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is utf8 testing:")
print(require("utf8") and "ok" or "failed")
require("utf8_test")
print("----------------")

-- waffi testing
if ffi.os == "Windows" then
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is waffi testing:")
require("waffi_test")
print("----------------")
end

-- winapi testing
if ffi.os == "Windows" then
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is winapi testing:")
print(require("winapi") and "ok" or "failed")
require("winapi_test")
print("----------------")
end

-- xxhash testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is xxhash testing:")
print(require("xxhash") and "ok" or "failed")
print("----------------")

-- yaci testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is yaci testing:")
print(require("yaci") and "ok" or "failed")
print("----------------")

-- zlib testing
nmodule = nmodule + 1
print(tostring(nmodule) .. ". This is zlib testing:")
print(require("zlib") and "ok" or "failed")
require("zlib_test")
print("----------------")
