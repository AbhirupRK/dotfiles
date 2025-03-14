function FindProxyForURL(url, host)
{
if (shExpMatch(host,"*.cilea.it") ||
shExpMatch(host,"cas.unimi.it"))
return "DIRECT";
if (shExpMatch(host, "scholar.google.com") ||
#shExpMatch(host, "journals.aps.org") ||
shExpMatch(host, "www.nature.com") ||
shExpMatch(host, "pubs.acs.org") ||
shExpMatch(host, "www.sciencedirect.com") ||
shExpMatch(host, "www.science.org") ||
shExpMatch(host, "iopscience.iop.org") ||
shExpMatch(host, "onlinelibrary.wiley.com") ||
shExpMatch(host,"*users.unimi.it"))
return "PROXY proxybiblio.lib.unimi.it:8080; PROXY opac.lib.unimi.it:8080; DIRECT";
else
return "DIRECT";
}
