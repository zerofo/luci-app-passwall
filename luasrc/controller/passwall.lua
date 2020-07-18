module("luci.controller.passwall", package.seeall)

function index()
  if not nixio.fs.access("/etc/config/passwall") then
    return
  end
  entry({"admin", "services", "passwall"}, firstchild(), "PassWall Plus", 99).dependent = true
  entry({"admin", "services", "passwall", "main"},cbi("passwall/main"), _("Main"), 10).leaf = true
  entry({"admin", "services", "passwall", "proxy"},cbi("passwall/proxy"), _("Server"), 15).leaf = true
  entry({"admin", "services", "passwall","run"},call("act_status")).leaf = true
end

function act_status()
  local list = {
    "ipt2socks",
    "tcproute2",
    "smartdns"
  }
  local i, v
  local j = {}
  luci.http.prepare_content("application/json")
  for i, v in ipairs(list) do
    j.status = luci.sys.call("pidof "..v.." >/dev/null") == 0
    if (j.status ~= true) then
      luci.http.write_json(j)
      break
    end
  end
  if (j.status == true) then
    luci.http.write_json(j)
  end
end
