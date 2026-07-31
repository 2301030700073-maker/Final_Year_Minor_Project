package androidx.glance.action;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ActionParameters$Key {
    public final String name;

    public ActionParameters$Key(String str) {
        this.name = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ActionParameters$Key) {
            return Intrinsics.areEqual(this.name, ((ActionParameters$Key) obj).name);
        }
        return false;
    }

    public final int hashCode() {
        return this.name.hashCode();
    }

    public final String toString() {
        return this.name;
    }
}
