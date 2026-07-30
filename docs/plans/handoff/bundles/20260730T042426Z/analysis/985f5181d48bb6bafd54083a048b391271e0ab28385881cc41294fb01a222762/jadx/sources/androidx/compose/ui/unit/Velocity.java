package androidx.compose.ui.unit;

import androidx.collection.LongObjectMap$$ExternalSyntheticBackport0;
import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: Velocity.kt */
/* loaded from: classes.dex */
public final class Velocity {
    public static final Companion Companion = new Companion(null);
    private static final long Zero = m2519constructorimpl(0);
    private final long packedValue;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Velocity m2518boximpl(long j) {
        return new Velocity(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m2519constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2522equalsimpl(long j, Object obj) {
        return (obj instanceof Velocity) && j == ((Velocity) obj).m2531unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2523equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2526hashCodeimpl(long j) {
        return LongObjectMap$$ExternalSyntheticBackport0.m(j);
    }

    public boolean equals(Object obj) {
        return m2522equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m2526hashCodeimpl(this.packedValue);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m2531unboximpl() {
        return this.packedValue;
    }

    /* renamed from: copy-OhffZ5M$default, reason: not valid java name */
    public static /* synthetic */ long m2521copyOhffZ5M$default(long j, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = Float.intBitsToFloat((int) (j >> 32));
        }
        if ((i & 2) != 0) {
            f2 = Float.intBitsToFloat((int) (BodyPartID.bodyIdMax & j));
        }
        return m2520copyOhffZ5M(j, f, f2);
    }

    /* renamed from: getX-impl, reason: not valid java name */
    public static final float m2524getXimpl(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    /* renamed from: getY-impl, reason: not valid java name */
    public static final float m2525getYimpl(long j) {
        return Float.intBitsToFloat((int) (j & BodyPartID.bodyIdMax));
    }

    /* renamed from: minus-AH228Gc, reason: not valid java name */
    public static final long m2527minusAH228Gc(long j, long j2) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) - Float.intBitsToFloat((int) (j2 >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & BodyPartID.bodyIdMax)) - Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
        return m2519constructorimpl((Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & BodyPartID.bodyIdMax));
    }

    /* renamed from: plus-AH228Gc, reason: not valid java name */
    public static final long m2528plusAH228Gc(long j, long j2) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) + Float.intBitsToFloat((int) (j2 >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & BodyPartID.bodyIdMax)) + Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
        return m2519constructorimpl((Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & BodyPartID.bodyIdMax));
    }

    /* renamed from: times-adjELrA, reason: not valid java name */
    public static final long m2529timesadjELrA(long j, float f) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) * f;
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & BodyPartID.bodyIdMax)) * f;
        return m2519constructorimpl((Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & BodyPartID.bodyIdMax));
    }

    private /* synthetic */ Velocity(long j) {
        this.packedValue = j;
    }

    /* renamed from: copy-OhffZ5M, reason: not valid java name */
    public static final long m2520copyOhffZ5M(long j, float f, float f2) {
        return m2519constructorimpl((Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(f2) & BodyPartID.bodyIdMax));
    }

    /* compiled from: Velocity.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getZero-9UxMQ8M, reason: not valid java name */
        public final long m2532getZero9UxMQ8M() {
            return Velocity.Zero;
        }
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2530toStringimpl(long j) {
        return CoreConstants.LEFT_PARENTHESIS_CHAR + m2524getXimpl(j) + ", " + m2525getYimpl(j) + ") px/sec";
    }

    public String toString() {
        return m2530toStringimpl(this.packedValue);
    }
}
