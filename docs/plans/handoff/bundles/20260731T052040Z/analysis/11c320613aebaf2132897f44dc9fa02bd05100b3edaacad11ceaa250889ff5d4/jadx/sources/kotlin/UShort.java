package kotlin;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class UShort implements Comparable {
    public final short data;

    public /* synthetic */ UShort(short s) {
        this.data = s;
    }

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
