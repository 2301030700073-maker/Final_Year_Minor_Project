package kotlin;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UShort implements Comparable {
    public final short data;

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return Intrinsics.compare(this.data & 65535, ((UShort) obj).data & 65535);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof UShort) {
            return this.data == ((UShort) obj).data;
        }
        return false;
    }

    public final int hashCode() {
        return this.data;
    }

    public final String toString() {
        return String.valueOf(this.data & 65535);
    }
}
