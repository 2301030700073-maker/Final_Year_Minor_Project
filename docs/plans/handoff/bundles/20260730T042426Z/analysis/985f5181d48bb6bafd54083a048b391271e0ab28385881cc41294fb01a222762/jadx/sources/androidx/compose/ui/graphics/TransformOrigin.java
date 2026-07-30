package androidx.compose.ui.graphics;

import androidx.collection.LongObjectMap$$ExternalSyntheticBackport0;
import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: TransformOrigin.kt */
/* loaded from: classes.dex */
public final class TransformOrigin {
    private final long packedValue;
    public static final Companion Companion = new Companion(null);
    private static final long Center = TransformOriginKt.TransformOrigin(0.5f, 0.5f);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TransformOrigin m1433boximpl(long j) {
        return new TransformOrigin(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m1434constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m1435equalsimpl(long j, Object obj) {
        return (obj instanceof TransformOrigin) && j == ((TransformOrigin) obj).m1441unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1436equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1439hashCodeimpl(long j) {
        return LongObjectMap$$ExternalSyntheticBackport0.m(j);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1440toStringimpl(long j) {
        return "TransformOrigin(packedValue=" + j + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public boolean equals(Object obj) {
        return m1435equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m1439hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m1440toStringimpl(this.packedValue);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m1441unboximpl() {
        return this.packedValue;
    }

    /* renamed from: getPivotFractionX-impl, reason: not valid java name */
    public static final float m1437getPivotFractionXimpl(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    /* renamed from: getPivotFractionY-impl, reason: not valid java name */
    public static final float m1438getPivotFractionYimpl(long j) {
        return Float.intBitsToFloat((int) (j & BodyPartID.bodyIdMax));
    }

    private /* synthetic */ TransformOrigin(long j) {
        this.packedValue = j;
    }

    /* compiled from: TransformOrigin.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getCenter-SzJe1aQ, reason: not valid java name */
        public final long m1442getCenterSzJe1aQ() {
            return TransformOrigin.Center;
        }
    }
}
