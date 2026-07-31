package androidx.glance.action;

import java.util.LinkedHashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MutableActionParameters {
    public final LinkedHashMap map;

    public MutableActionParameters(LinkedHashMap linkedHashMap) {
        this.map = linkedHashMap;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof MutableActionParameters) {
            return this.map.equals(((MutableActionParameters) obj).map);
        }
        return false;
    }

    public final int hashCode() {
        return this.map.hashCode();
    }

    public final String toString() {
        return this.map.toString();
    }
}
