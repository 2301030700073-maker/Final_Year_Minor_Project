package coil3.network.internal;

import coil3.network.CacheStrategy;
import java.util.Set;
import kotlin.collections.ArraysKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DefaultCacheStrategy implements CacheStrategy {
    public static final Set CACHEABLE_STATUS_CODES = ArraysKt.toSet(new Integer[]{300, 301, 404, 405, 410, 414, 501});
}
