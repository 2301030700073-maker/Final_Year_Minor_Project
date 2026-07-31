package androidx.glance.action;

import java.util.LinkedHashMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
