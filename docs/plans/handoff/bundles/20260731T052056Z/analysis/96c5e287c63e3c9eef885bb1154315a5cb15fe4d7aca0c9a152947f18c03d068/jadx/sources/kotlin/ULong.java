package kotlin;

import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ULong implements Comparable {
    public final long data;

    public /* synthetic */ ULong(long j) {
        this.data = j;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m820equalsimpl0(long j, long j2) {
        return j == j2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Intrinsics.compare(this.data ^ Long.MIN_VALUE, ((ULong) obj).data ^ Long.MIN_VALUE);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ULong) {
            return this.data == ((ULong) obj).data;
        }
        return false;
    }

    public final int hashCode() {
        return Modifier.CC.m(this.data);
    }

    public final String toString() {
        return UnsignedKt.ulongToString(this.data, 10);
    }
}
