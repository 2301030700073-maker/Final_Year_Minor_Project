package androidx.work.impl.utils;

import java.util.WeakHashMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class WakeLocksHolder {
    public static final WakeLocksHolder INSTANCE = new WakeLocksHolder();
    public static final WeakHashMap wakeLocks = new WeakHashMap();
}
