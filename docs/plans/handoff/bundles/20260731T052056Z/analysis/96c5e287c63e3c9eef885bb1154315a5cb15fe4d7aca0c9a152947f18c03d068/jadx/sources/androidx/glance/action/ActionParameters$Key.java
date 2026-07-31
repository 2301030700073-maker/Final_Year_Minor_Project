package androidx.glance.action;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
