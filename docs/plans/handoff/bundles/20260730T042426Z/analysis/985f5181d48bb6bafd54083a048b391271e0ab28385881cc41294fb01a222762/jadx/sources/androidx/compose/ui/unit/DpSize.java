package androidx.compose.ui.unit;

import androidx.collection.LongObjectMap$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: Dp.kt */
/* loaded from: classes.dex */
public final class DpSize {
    private final long packedValue;
    public static final Companion Companion = new Companion(null);
    private static final long Zero = m2447constructorimpl(0);
    private static final long Unspecified = m2447constructorimpl(9205357640488583168L);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ DpSize m2446boximpl(long j) {
        return new DpSize(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m2447constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2448equalsimpl(long j, Object obj) {
        return (obj instanceof DpSize) && j == ((DpSize) obj).m2454unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2449equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2452hashCodeimpl(long j) {
        return LongObjectMap$$ExternalSyntheticBackport0.m(j);
    }

    public boolean equals(Object obj) {
        return m2448equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m2452hashCodeimpl(this.packedValue);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m2454unboximpl() {
        return this.packedValue;
    }

    /* renamed from: getHeight-D9Ej5fM, reason: not valid java name */
    public static final float m2450getHeightD9Ej5fM(long j) {
        return Dp.m2424constructorimpl(Float.intBitsToFloat((int) (j & BodyPartID.bodyIdMax)));
    }

    /* renamed from: getWidth-D9Ej5fM, reason: not valid java name */
    public static final float m2451getWidthD9Ej5fM(long j) {
        return Dp.m2424constructorimpl(Float.intBitsToFloat((int) (j >> 32)));
    }

    private /* synthetic */ DpSize(long j) {
        this.packedValue = j;
    }

    public String toString() {
        return m2453toStringimpl(this.packedValue);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2453toStringimpl(long j) {
        if (j != 9205357640488583168L) {
            return ((Object) Dp.m2428toStringimpl(m2451getWidthD9Ej5fM(j))) + " x " + ((Object) Dp.m2428toStringimpl(m2450getHeightD9Ej5fM(j)));
        }
        return "DpSize.Unspecified";
    }

    /* compiled from: Dp.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getZero-MYxV2XQ, reason: not valid java name */
        public final long m2456getZeroMYxV2XQ() {
            return DpSize.Zero;
        }

        /* renamed from: getUnspecified-MYxV2XQ, reason: not valid java name */
        public final long m2455getUnspecifiedMYxV2XQ() {
            return DpSize.Unspecified;
        }
    }
}
