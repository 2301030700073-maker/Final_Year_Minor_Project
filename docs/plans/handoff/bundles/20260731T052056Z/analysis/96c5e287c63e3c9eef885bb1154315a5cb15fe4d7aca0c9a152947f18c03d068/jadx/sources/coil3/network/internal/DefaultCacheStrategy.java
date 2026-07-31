package coil3.network.internal;

import coil3.network.CacheStrategy;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DefaultCacheStrategy implements CacheStrategy {
    public static final Set CACHEABLE_STATUS_CODES = ArraysKt___ArraysKt.toSet(new Integer[]{300, 301, 404, 405, 410, 414, 501});
}
