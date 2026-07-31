package androidx.compose.ui.text;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextRange {
    public static final /* synthetic */ int $r8$clinit = 0;
    public static final long Zero = ParagraphKt.TextRange(0, 0);
    public final long packedValue;

    public /* synthetic */ TextRange(long j) {
        this.packedValue = j;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m697equalsimpl(long j, Object obj) {
        return (obj instanceof TextRange) && j == ((TextRange) obj).packedValue;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m698equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: getCollapsed-impl, reason: not valid java name */
    public static final boolean m699getCollapsedimpl(long j) {
        return ((int) (j >> 32)) == ((int) (j & 4294967295L));
    }

    /* renamed from: getLength-impl, reason: not valid java name */
    public static final int m700getLengthimpl(long j) {
        return m701getMaximpl(j) - m702getMinimpl(j);
    }

    /* renamed from: getMax-impl, reason: not valid java name */
    public static final int m701getMaximpl(long j) {
        return Math.max((int) (j >> 32), (int) (j & 4294967295L));
    }

    /* renamed from: getMin-impl, reason: not valid java name */
    public static final int m702getMinimpl(long j) {
        return Math.min((int) (j >> 32), (int) (j & 4294967295L));
    }

    /* renamed from: getReversed-impl, reason: not valid java name */
    public static final boolean m703getReversedimpl(long j) {
        return ((int) (j >> 32)) > ((int) (j & 4294967295L));
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m704toStringimpl(long j) {
        StringBuilder sb = new StringBuilder("TextRange(");
        sb.append((int) (j >> 32));
        sb.append(", ");
        return CameraDevices$CC.m(sb, (int) (j & 4294967295L), ')');
    }

    public final boolean equals(Object obj) {
        return m697equalsimpl(this.packedValue, obj);
    }

    public final int hashCode() {
        long j = this.packedValue;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        return m704toStringimpl(this.packedValue);
    }
}
