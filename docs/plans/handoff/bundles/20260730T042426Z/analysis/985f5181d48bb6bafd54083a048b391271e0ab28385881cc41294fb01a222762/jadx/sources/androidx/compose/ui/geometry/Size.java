package androidx.compose.ui.geometry;

import androidx.collection.LongObjectMap$$ExternalSyntheticBackport0;
import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: Size.kt */
/* loaded from: classes.dex */
public final class Size {
    private final long packedValue;
    public static final Companion Companion = new Companion(null);
    private static final long Zero = m1199constructorimpl(0);
    private static final long Unspecified = m1199constructorimpl(9205357640488583168L);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Size m1198boximpl(long j) {
        return new Size(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m1199constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m1200equalsimpl(long j, Object obj) {
        return (obj instanceof Size) && j == ((Size) obj).m1208unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1201equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1205hashCodeimpl(long j) {
        return LongObjectMap$$ExternalSyntheticBackport0.m(j);
    }

    public boolean equals(Object obj) {
        return m1200equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m1205hashCodeimpl(this.packedValue);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m1208unboximpl() {
        return this.packedValue;
    }

    private /* synthetic */ Size(long j) {
        this.packedValue = j;
    }

    /* renamed from: getWidth-impl, reason: not valid java name */
    public static final float m1204getWidthimpl(long j) {
        if (j == 9205357640488583168L) {
            InlineClassHelperKt.throwIllegalStateException("Size is unspecified");
        }
        return Float.intBitsToFloat((int) (j >> 32));
    }

    /* renamed from: getHeight-impl, reason: not valid java name */
    public static final float m1202getHeightimpl(long j) {
        if (j == 9205357640488583168L) {
            InlineClassHelperKt.throwIllegalStateException("Size is unspecified");
        }
        return Float.intBitsToFloat((int) (j & BodyPartID.bodyIdMax));
    }

    /* compiled from: Size.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getZero-NH-jbRc, reason: not valid java name */
        public final long m1210getZeroNHjbRc() {
            return Size.Zero;
        }

        /* renamed from: getUnspecified-NH-jbRc, reason: not valid java name */
        public final long m1209getUnspecifiedNHjbRc() {
            return Size.Unspecified;
        }
    }

    /* renamed from: isEmpty-impl, reason: not valid java name */
    public static final boolean m1206isEmptyimpl(long j) {
        if (j == 9205357640488583168L) {
            InlineClassHelperKt.throwIllegalStateException("Size is unspecified");
        }
        long j2 = j & (~((((-9223372034707292160L) & j) >>> 31) * (-1)));
        return ((j2 & BodyPartID.bodyIdMax) & (j2 >>> 32)) == 0;
    }

    /* renamed from: getMinDimension-impl, reason: not valid java name */
    public static final float m1203getMinDimensionimpl(long j) {
        if (j == 9205357640488583168L) {
            InlineClassHelperKt.throwIllegalStateException("Size is unspecified");
        }
        return Math.min(Float.intBitsToFloat((int) ((j >> 32) & 2147483647L)), Float.intBitsToFloat((int) (j & 2147483647L)));
    }

    public String toString() {
        return m1207toStringimpl(this.packedValue);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1207toStringimpl(long j) {
        if (j != 9205357640488583168L) {
            return "Size(" + GeometryUtilsKt.toStringAsFixed(m1204getWidthimpl(j), 1) + ", " + GeometryUtilsKt.toStringAsFixed(m1202getHeightimpl(j), 1) + CoreConstants.RIGHT_PARENTHESIS_CHAR;
        }
        return "Size.Unspecified";
    }
}
