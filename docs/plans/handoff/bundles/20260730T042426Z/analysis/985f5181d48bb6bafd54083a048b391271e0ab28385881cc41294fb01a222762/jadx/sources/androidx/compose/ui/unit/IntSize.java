package androidx.compose.ui.unit;

import androidx.collection.LongObjectMap$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: IntSize.kt */
/* loaded from: classes.dex */
public final class IntSize {
    public static final Companion Companion = new Companion(null);
    private static final long Zero = m2480constructorimpl(0);
    private final long packedValue;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ IntSize m2479boximpl(long j) {
        return new IntSize(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m2480constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2481equalsimpl(long j, Object obj) {
        return (obj instanceof IntSize) && j == ((IntSize) obj).m2487unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2482equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: getHeight-impl, reason: not valid java name */
    public static final int m2483getHeightimpl(long j) {
        return (int) (j & BodyPartID.bodyIdMax);
    }

    /* renamed from: getWidth-impl, reason: not valid java name */
    public static final int m2484getWidthimpl(long j) {
        return (int) (j >> 32);
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2485hashCodeimpl(long j) {
        return LongObjectMap$$ExternalSyntheticBackport0.m(j);
    }

    public boolean equals(Object obj) {
        return m2481equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m2485hashCodeimpl(this.packedValue);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m2487unboximpl() {
        return this.packedValue;
    }

    private /* synthetic */ IntSize(long j) {
        this.packedValue = j;
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2486toStringimpl(long j) {
        return m2484getWidthimpl(j) + " x " + m2483getHeightimpl(j);
    }

    public String toString() {
        return m2486toStringimpl(this.packedValue);
    }

    /* compiled from: IntSize.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getZero-YbymL2g, reason: not valid java name */
        public final long m2488getZeroYbymL2g() {
            return IntSize.Zero;
        }
    }
}
