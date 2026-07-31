package org.minidns;

import j$.util.concurrent.ConcurrentHashMap;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import org.minidns.cache.LruCache;
import org.minidns.dnsserverlookup.AbstractDnsServerLookupMechanism;
import org.minidns.dnsserverlookup.AndroidUsingExec;
import org.minidns.dnsserverlookup.AndroidUsingReflection;
import org.minidns.dnsserverlookup.UnixUsingEtcResolvConf;
import org.minidns.util.InetAddressUtil;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DnsClient extends AbstractDnsClient {
    public static final CopyOnWriteArrayList LOOKUP_MECHANISMS;
    public static final CopyOnWriteArraySet STATIC_IPV4_DNS_SERVERS;
    public static final CopyOnWriteArraySet STATIC_IPV6_DNS_SERVERS;
    public static final Set blacklistedDnsServers;
    public final Set nonRaServers;
    public final boolean useHardcodedDnsServers;

    static {
        InetAddress byName;
        InetAddress byName2;
        Logger logger = AbstractDnsClient.LOGGER;
        LOOKUP_MECHANISMS = new CopyOnWriteArrayList();
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        STATIC_IPV4_DNS_SERVERS = copyOnWriteArraySet;
        STATIC_IPV6_DNS_SERVERS = new CopyOnWriteArraySet();
        addDnsServerLookupMechanism(AndroidUsingExec.INSTANCE);
        addDnsServerLookupMechanism(AndroidUsingReflection.INSTANCE);
        addDnsServerLookupMechanism(UnixUsingEtcResolvConf.INSTANCE);
        try {
            Pattern pattern = InetAddressUtil.IPV4_PATTERN;
            try {
                byName2 = InetAddress.getByName("8.8.8.8");
            } catch (UnknownHostException e) {
                throw new IllegalArgumentException(e);
            }
        } catch (IllegalArgumentException e2) {
            logger.log(Level.WARNING, "Could not add static IPv4 DNS Server", (Throwable) e2);
        }
        if (!(byName2 instanceof Inet4Address)) {
            throw new IllegalArgumentException();
        }
        copyOnWriteArraySet.add((Inet4Address) byName2);
        try {
            Pattern pattern2 = InetAddressUtil.IPV4_PATTERN;
            try {
                byName = InetAddress.getByName("[2001:4860:4860::8888]");
            } catch (UnknownHostException e3) {
                throw new IllegalArgumentException(e3);
            }
        } catch (IllegalArgumentException e4) {
            logger.log(Level.WARNING, "Could not add static IPv6 DNS Server", (Throwable) e4);
        }
        if (!(byName instanceof Inet6Address)) {
            throw new IllegalArgumentException();
        }
        STATIC_IPV6_DNS_SERVERS.add((Inet6Address) byName);
        blacklistedDnsServers = Collections.newSetFromMap(new ConcurrentHashMap(4));
    }

    public DnsClient(LruCache lruCache) {
        super(lruCache);
        this.nonRaServers = Collections.newSetFromMap(new ConcurrentHashMap(4));
        this.useHardcodedDnsServers = true;
    }

    public static void addDnsServerLookupMechanism(AbstractDnsServerLookupMechanism abstractDnsServerLookupMechanism) {
        if (!abstractDnsServerLookupMechanism.isAvailable()) {
            AbstractDnsClient.LOGGER.fine("Not adding " + abstractDnsServerLookupMechanism.name + " as it is not available.");
            return;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = LOOKUP_MECHANISMS;
        synchronized (copyOnWriteArrayList) {
            ArrayList arrayList = new ArrayList(copyOnWriteArrayList.size() + 1);
            arrayList.addAll(copyOnWriteArrayList);
            arrayList.add(abstractDnsServerLookupMechanism);
            Collections.sort(arrayList);
            copyOnWriteArrayList.clear();
            copyOnWriteArrayList.addAll(arrayList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:75:0x021c  */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r5v4 */
    @Override // org.minidns.AbstractDnsClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.minidns.dnsqueryresult.DnsQueryResult query(org.minidns.dnsmessage.DnsMessage.Builder r17) {
        /*
            Method dump skipped, instructions count: 755
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.minidns.DnsClient.query(org.minidns.dnsmessage.DnsMessage$Builder):org.minidns.dnsqueryresult.DnsQueryResult");
    }
}
