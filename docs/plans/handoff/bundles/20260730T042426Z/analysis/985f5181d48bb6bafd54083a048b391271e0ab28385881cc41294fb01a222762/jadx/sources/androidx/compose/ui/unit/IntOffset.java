package androidx.compose.ui.unit;

import androidx.collection.LongObjectMap$$ExternalSyntheticBackport0;
import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: IntOffset.kt */
/* loaded from: classes.dex */
public final class IntOffset {
    public static final Companion Companion = new Companion(null);
    private static final long Zero = m2460constructorimpl(0);
    private final long packedValue;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ IntOffset m2459boximpl(long j) {
        return new IntOffset(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m2460constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2463equalsimpl(long j, Object obj) {
        return (obj instanceof IntOffset) && j == ((IntOffset) obj).m2471unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2464equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: getX-impl, reason: not valid java name */
    public static final int m2465getXimpl(long j) {
        return (int) (j >> 32);
    }

    /* renamed from: getY-impl, reason: not valid java name */
    public static final int m2466getYimpl(long j) {
        return (int) (j & BodyPartID.bodyIdMax);
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2467hashCodeimpl(long j) {
        return LongObjectMap$$ExternalSyntheticBackport0.m(j);
    }

    public boolean equals(Object obj) {
        return m2463equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m2467hashCodeimpl(this.packedValue);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m2471unboximpl() {
        return this.packedValue;
    }

    private /* synthetic */ IntOffset(long j) {
        this.packedValue = j;
    }

    /* renamed from: copy-iSbpLlY$default, reason: not valid java name */
    public static /* synthetic */ long m2462copyiSbpLlY$default(long j, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = (int) (j >> 32);
        }
        if ((i3 & 2) != 0) {
            i2 = (int) (BodyPartID.bodyIdMax & j);
        }
        return m2461copyiSbpLlY(j, i, i2);
    }

    /* renamed from: copy-iSbpLlY, reason: not valid java name */
    public static final long m2461copyiSbpLlY(long j, int i, int i2) {
        return m2460constructorimpl((i << 32) | (i2 & BodyPartID.bodyIdMax));
    }

    /* renamed from: minus-qkQi6aY, reason: not valid java name */
    public static final long m2468minusqkQi6aY(long j, long j2) {
        return m2460constructorimpl(((((int) (j >> 32)) - ((int) (j2 >> 32))) << 32) | ((((int) (j & BodyPartID.bodyIdMax)) - ((int) (j2 & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax));
    }

    /* renamed from: plus-qkQi6aY, reason: not valid java name */
    public static final long m2469plusqkQi6aY(long j, long j2) {
        return m2460constructorimpl(((((int) (j >> 32)) + ((int) (j2 >> 32))) << 32) | ((((int) (j & BodyPartID.bodyIdMax)) + ((int) (j2 & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax));
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2470toStringimpl(long j) {
        return CoreConstants.LEFT_PARENTHESIS_CHAR + m2465getXimpl(j) + ", " + m2466getYimpl(j) + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public String toString() {
        return m2470toStringimpl(this.packedValue);
    }

    /* compiled from: IntOffset.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getZero-nOcc-ac, reason: not valid java name */
        public final long m2472getZeronOccac() {
            return IntOffset.Zero;
        }
    }
}
