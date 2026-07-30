package b.e.i.E;

import android.view.accessibility.AccessibilityNodeInfo;

/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public final Object f752a;

    public c(Object obj) {
        this.f752a = obj;
    }

    public static c a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        return new c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2));
    }
}
