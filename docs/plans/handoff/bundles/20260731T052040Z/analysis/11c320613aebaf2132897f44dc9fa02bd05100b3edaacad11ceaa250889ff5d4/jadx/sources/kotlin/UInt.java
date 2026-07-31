package kotlin;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class UInt implements Comparable {
    public final int data;

    public /* synthetic */ UInt(int i) {
        this.data = i;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Intrinsics.compare(this.data ^ Integer.MIN_VALUE, ((UInt) obj).data ^ Integer.MIN_VALUE);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof UInt) {
            return this.data == ((UInt) obj).data;
        }
        return false;
    }

    public final int hashCode() {
        return this.data;
    }

    public final String toString() {
        return String.valueOf(this.data & 4294967295L);
    }
}
