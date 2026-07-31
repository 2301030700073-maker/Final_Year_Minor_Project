package kotlin;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UByte implements Comparable {
    public final byte data;

    public /* synthetic */ UByte(byte b) {
        this.data = b;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return Intrinsics.compare(this.data & 255, ((UByte) obj).data & 255);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof UByte) {
            return this.data == ((UByte) obj).data;
        }
        return false;
    }

    public final int hashCode() {
        return this.data;
    }

    public final String toString() {
        return String.valueOf(this.data & 255);
    }
}
