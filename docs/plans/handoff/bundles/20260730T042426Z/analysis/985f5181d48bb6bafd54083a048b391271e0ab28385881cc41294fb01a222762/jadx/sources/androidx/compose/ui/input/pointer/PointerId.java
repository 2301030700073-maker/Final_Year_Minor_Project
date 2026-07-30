package androidx.compose.ui.input.pointer;

import androidx.collection.LongObjectMap$$ExternalSyntheticBackport0;
import ch.qos.logback.core.CoreConstants;

/* compiled from: PointerEvent.kt */
/* loaded from: classes.dex */
public final class PointerId {
    private final long value;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ PointerId m1678boximpl(long j) {
        return new PointerId(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m1679constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m1680equalsimpl(long j, Object obj) {
        return (obj instanceof PointerId) && j == ((PointerId) obj).m1684unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1681equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1682hashCodeimpl(long j) {
        return LongObjectMap$$ExternalSyntheticBackport0.m(j);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1683toStringimpl(long j) {
        return "PointerId(value=" + j + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public boolean equals(Object obj) {
        return m1680equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1682hashCodeimpl(this.value);
    }

    public String toString() {
        return m1683toStringimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m1684unboximpl() {
        return this.value;
    }

    private /* synthetic */ PointerId(long j) {
        this.value = j;
    }
}
