package androidx.compose.ui.geometry;

import androidx.collection.LongObjectMap$$ExternalSyntheticBackport0;
import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: Offset.kt */
/* loaded from: classes.dex */
public final class Offset {
    private final long packedValue;
    public static final Companion Companion = new Companion(null);
    private static final long Zero = m1159constructorimpl(0);
    private static final long Infinite = m1159constructorimpl(9187343241974906880L);
    private static final long Unspecified = m1159constructorimpl(9205357640488583168L);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Offset m1158boximpl(long j) {
        return new Offset(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m1159constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m1163equalsimpl(long j, Object obj) {
        return (obj instanceof Offset) && j == ((Offset) obj).m1176unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1164equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1169hashCodeimpl(long j) {
        return LongObjectMap$$ExternalSyntheticBackport0.m(j);
    }

    /* renamed from: isValid-impl, reason: not valid java name */
    public static final boolean m1170isValidimpl(long j) {
        long j2 = j & 9223372034707292159L;
        return (((~j2) & (j2 - 9187343246269874177L)) & (-9223372034707292160L)) == -9223372034707292160L;
    }

    public boolean equals(Object obj) {
        return m1163equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m1169hashCodeimpl(this.packedValue);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m1176unboximpl() {
        return this.packedValue;
    }

    /* renamed from: copy-dBAh8RU$default, reason: not valid java name */
    public static /* synthetic */ long m1161copydBAh8RU$default(long j, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = Float.intBitsToFloat((int) (j >> 32));
        }
        if ((i & 2) != 0) {
            f2 = Float.intBitsToFloat((int) (BodyPartID.bodyIdMax & j));
        }
        return m1160copydBAh8RU(j, f, f2);
    }

    /* renamed from: div-tuRUvjQ, reason: not valid java name */
    public static final long m1162divtuRUvjQ(long j, float f) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) / f;
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & BodyPartID.bodyIdMax)) / f;
        return m1159constructorimpl((Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & BodyPartID.bodyIdMax));
    }

    /* renamed from: getDistance-impl, reason: not valid java name */
    public static final float m1165getDistanceimpl(long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & BodyPartID.bodyIdMax));
        return (float) Math.sqrt((intBitsToFloat * intBitsToFloat) + (intBitsToFloat2 * intBitsToFloat2));
    }

    /* renamed from: getDistanceSquared-impl, reason: not valid java name */
    public static final float m1166getDistanceSquaredimpl(long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & BodyPartID.bodyIdMax));
        return (intBitsToFloat * intBitsToFloat) + (intBitsToFloat2 * intBitsToFloat2);
    }

    /* renamed from: getX-impl, reason: not valid java name */
    public static final float m1167getXimpl(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    /* renamed from: getY-impl, reason: not valid java name */
    public static final float m1168getYimpl(long j) {
        return Float.intBitsToFloat((int) (j & BodyPartID.bodyIdMax));
    }

    /* renamed from: minus-MK-Hz9U, reason: not valid java name */
    public static final long m1171minusMKHz9U(long j, long j2) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) - Float.intBitsToFloat((int) (j2 >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & BodyPartID.bodyIdMax)) - Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
        return m1159constructorimpl((Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & BodyPartID.bodyIdMax));
    }

    /* renamed from: plus-MK-Hz9U, reason: not valid java name */
    public static final long m1172plusMKHz9U(long j, long j2) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) + Float.intBitsToFloat((int) (j2 >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & BodyPartID.bodyIdMax)) + Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
        return m1159constructorimpl((Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & BodyPartID.bodyIdMax));
    }

    /* renamed from: times-tuRUvjQ, reason: not valid java name */
    public static final long m1173timestuRUvjQ(long j, float f) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) * f;
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & BodyPartID.bodyIdMax)) * f;
        return m1159constructorimpl((Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & BodyPartID.bodyIdMax));
    }

    private /* synthetic */ Offset(long j) {
        this.packedValue = j;
    }

    /* renamed from: copy-dBAh8RU, reason: not valid java name */
    public static final long m1160copydBAh8RU(long j, float f, float f2) {
        return m1159constructorimpl((Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(f2) & BodyPartID.bodyIdMax));
    }

    /* compiled from: Offset.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getZero-F1C5BW0, reason: not valid java name */
        public final long m1179getZeroF1C5BW0() {
            return Offset.Zero;
        }

        /* renamed from: getInfinite-F1C5BW0, reason: not valid java name */
        public final long m1177getInfiniteF1C5BW0() {
            return Offset.Infinite;
        }

        /* renamed from: getUnspecified-F1C5BW0, reason: not valid java name */
        public final long m1178getUnspecifiedF1C5BW0() {
            return Offset.Unspecified;
        }
    }

    /* renamed from: unaryMinus-F1C5BW0, reason: not valid java name */
    public static final long m1175unaryMinusF1C5BW0(long j) {
        return m1159constructorimpl(j ^ (-9223372034707292160L));
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1174toStringimpl(long j) {
        if (OffsetKt.m1181isSpecifiedk4lQ0M(j)) {
            return "Offset(" + GeometryUtilsKt.toStringAsFixed(m1167getXimpl(j), 1) + ", " + GeometryUtilsKt.toStringAsFixed(m1168getYimpl(j), 1) + CoreConstants.RIGHT_PARENTHESIS_CHAR;
        }
        return "Offset.Unspecified";
    }

    public String toString() {
        return m1174toStringimpl(this.packedValue);
    }
}
