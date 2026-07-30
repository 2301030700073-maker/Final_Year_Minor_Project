package org.fdroid.fdroid.net;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import okhttp3.Dns;
import org.fdroid.fdroid.Preferences;

/* loaded from: classes2.dex */
public class DnsWithCache implements Dns {
    @Override // okhttp3.Dns
    public List<InetAddress> lookup(String str) throws UnknownHostException {
        if (!Preferences.get().isDnsCacheEnabled()) {
            return Dns.SYSTEM.lookup(str);
        }
        DnsCache dnsCache = DnsCache.get();
        List<InetAddress> lookup = dnsCache.lookup(str);
        if (lookup != null) {
            return lookup;
        }
        List lookup2 = Dns.SYSTEM.lookup(str);
        dnsCache.insert(str, lookup2);
        return lookup2;
    }
}
