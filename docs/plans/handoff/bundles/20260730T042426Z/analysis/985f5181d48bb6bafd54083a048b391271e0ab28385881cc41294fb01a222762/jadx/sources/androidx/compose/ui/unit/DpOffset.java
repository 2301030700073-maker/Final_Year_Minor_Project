package androidx.compose.ui.unit;

import androidx.collection.LongObjectMap$$ExternalSyntheticBackport0;
import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: Dp.kt */
/* loaded from: classes.dex */
public final class DpOffset {
    private final long packedValue;
    public static final Companion Companion = new Companion(null);
    private static final long Zero = m2438constructorimpl(0);
    private static final long Unspecified = m2438constructorimpl(9205357640488583168L);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ DpOffset m2437boximpl(long j) {
        return new DpOffset(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m2438constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2439equalsimpl(long j, Object obj) {
        return (obj instanceof DpOffset) && j == ((DpOffset) obj).m2445unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2440equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2443hashCodeimpl(long j) {
        return LongObjectMap$$ExternalSyntheticBackport0.m(j);
    }

    public boolean equals(Object obj) {
        return m2439equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m2443hashCodeimpl(this.packedValue);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m2445unboximpl() {
        return this.packedValue;
    }

    /* renamed from: getX-D9Ej5fM, reason: not valid java name */
    public static final float m2441getXD9Ej5fM(long j) {
        return Dp.m2424constructorimpl(Float.intBitsToFloat((int) (j >> 32)));
    }

    /* renamed from: getY-D9Ej5fM, reason: not valid java name */
    public static final float m2442getYD9Ej5fM(long j) {
        return Dp.m2424constructorimpl(Float.intBitsToFloat((int) (j & BodyPartID.bodyIdMax)));
    }

    private /* synthetic */ DpOffset(long j) {
        this.packedValue = j;
    }

    public String toString() {
        return m2444toStringimpl(this.packedValue);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2444toStringimpl(long j) {
        if (j != 9205357640488583168L) {
            return CoreConstants.LEFT_PARENTHESIS_CHAR + ((Object) Dp.m2428toStringimpl(m2441getXD9Ej5fM(j))) + ", " + ((Object) Dp.m2428toStringimpl(m2442getYD9Ej5fM(j))) + CoreConstants.RIGHT_PARENTHESIS_CHAR;
        }
        return "DpOffset.Unspecified";
    }

    /* compiled from: Dp.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
