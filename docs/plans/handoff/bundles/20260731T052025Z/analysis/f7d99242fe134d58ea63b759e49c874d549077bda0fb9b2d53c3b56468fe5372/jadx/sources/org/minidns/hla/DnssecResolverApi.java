package org.minidns.hla;

import org.minidns.cache.LruCache;
import org.minidns.dnssec.DnssecClient;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DnssecResolverApi extends ResolverApi {
    public static final DnssecResolverApi INSTANCE = new DnssecResolverApi();
    public final DnssecClient dnssecClient = new DnssecClient(new LruCache());

    public DnssecResolverApi() {
        new DnssecClient(new LruCache()).mode = 3;
        new DnssecClient(new LruCache()).mode = 2;
    }
}
