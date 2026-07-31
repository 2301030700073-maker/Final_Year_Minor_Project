package coil3.memory;

import java.lang.ref.WeakReference;
import java.util.Map;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
