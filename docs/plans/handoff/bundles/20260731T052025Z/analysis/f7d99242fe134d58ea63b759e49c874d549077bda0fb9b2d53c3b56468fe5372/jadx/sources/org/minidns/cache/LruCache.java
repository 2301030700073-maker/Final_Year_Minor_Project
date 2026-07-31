package org.minidns.cache;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.minidns.dnsmessage.DnsMessage;
import org.minidns.dnsqueryresult.DirectCachedDnsQueryResult;
import org.minidns.record.Record;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LruCache {
    public long missCount = 0;
    public long expireCount = 0;
    public long hitCount = 0;
    public final AnonymousClass1 backend = new AnonymousClass1(Math.min(642, 11), 0.75f, true);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: org.minidns.cache.LruCache$1, reason: invalid class name */
    public final class AnonymousClass1 extends LinkedHashMap {
        @Override // java.util.LinkedHashMap
        public final boolean removeEldestEntry(Map.Entry entry) {
            return size() > 512;
        }
    }

    public final DirectCachedDnsQueryResult get(DnsMessage dnsMessage) {
        if (dnsMessage.normalizedVersionCache == null) {
            dnsMessage.normalizedVersionCache = new DnsMessage(dnsMessage);
        }
        DnsMessage dnsMessage2 = dnsMessage.normalizedVersionCache;
        synchronized (this) {
            DirectCachedDnsQueryResult directCachedDnsQueryResult = (DirectCachedDnsQueryResult) this.backend.get(dnsMessage2);
            if (directCachedDnsQueryResult == null) {
                this.missCount++;
                return null;
            }
            DnsMessage dnsMessage3 = (DnsMessage) directCachedDnsQueryResult.response;
            long j = dnsMessage3.answersMinTtlCache;
            if (j < 0) {
                dnsMessage3.answersMinTtlCache = Long.MAX_VALUE;
                Iterator it = dnsMessage3.answerSection.iterator();
                while (it.hasNext()) {
                    dnsMessage3.answersMinTtlCache = Math.min(dnsMessage3.answersMinTtlCache, ((Record) it.next()).ttl);
                }
                j = dnsMessage3.answersMinTtlCache;
            }
            if ((Math.min(j, Long.MAX_VALUE) * 1000) + dnsMessage3.receiveTimestamp >= System.currentTimeMillis()) {
                this.hitCount++;
                return directCachedDnsQueryResult;
            }
            this.missCount++;
            this.expireCount++;
            this.backend.remove(dnsMessage2);
            return null;
        }
    }

    public final String toString() {
        return "LRUCache{usage=" + this.backend.size() + "/512, hits=" + this.hitCount + ", misses=" + this.missCount + ", expires=" + this.expireCount + "}";
    }
}
