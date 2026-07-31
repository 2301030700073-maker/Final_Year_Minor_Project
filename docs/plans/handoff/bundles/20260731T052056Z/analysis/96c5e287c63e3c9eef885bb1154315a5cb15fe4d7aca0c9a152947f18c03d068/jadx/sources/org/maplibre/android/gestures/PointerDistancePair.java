package org.maplibre.android.gestures;

import android.util.Pair;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PointerDistancePair extends Pair {
    @Override // android.util.Pair
    public final boolean equals(Object obj) {
        if (!(obj instanceof PointerDistancePair)) {
            return false;
        }
        PointerDistancePair pointerDistancePair = (PointerDistancePair) obj;
        if (((Integer) ((Pair) this).first).equals(((Pair) pointerDistancePair).first) && ((Integer) ((Pair) this).second).equals(((Pair) pointerDistancePair).second)) {
            return true;
        }
        return ((Integer) ((Pair) this).first).equals(((Pair) pointerDistancePair).second) && ((Integer) ((Pair) this).second).equals(((Pair) pointerDistancePair).first);
    }
}
