package coil3.memory;

import java.lang.ref.WeakReference;
import java.util.Map;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RealWeakMemoryCache$InternalValue {
    public final Map extras;
    public final WeakReference image;
    public final long size;

    public RealWeakMemoryCache$InternalValue(WeakReference weakReference, Map map, long j) {
        this.image = weakReference;
        this.extras = map;
        this.size = j;
    }
}
