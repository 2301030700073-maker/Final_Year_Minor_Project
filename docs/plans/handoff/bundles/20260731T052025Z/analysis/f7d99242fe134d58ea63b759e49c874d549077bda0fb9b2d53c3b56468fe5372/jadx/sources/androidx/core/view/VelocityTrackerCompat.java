package androidx.core.view;

import j$.util.DesugarCollections;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class VelocityTrackerCompat {
    public static final Map sFallbackTrackers = DesugarCollections.synchronizedMap(new WeakHashMap());
}
