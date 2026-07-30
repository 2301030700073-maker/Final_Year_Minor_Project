package androidx.compose.ui.geometry;

import androidx.collection.LongObjectMap$$ExternalSyntheticBackport0;
import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: CornerRadius.kt */
/* loaded from: classes.dex */
public abstract class CornerRadius {
    public static final Companion Companion = new Companion(null);
    private static final long Zero = CornerRadiusKt.CornerRadius$default(0.0f, 0.0f, 2, null);

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m1151constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1152equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1155hashCodeimpl(long j) {
        return LongObjectMap$$ExternalSyntheticBackport0.m(j);
    }

    /* renamed from: getX-impl, reason: not valid java name */
    public static final float m1153getXimpl(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    /* renamed from: getY-impl, reason: not valid java name */
    public static final float m1154getYimpl(long j) {
        return Float.intBitsToFloat((int) (j & BodyPartID.bodyIdMax));
    }

    /* compiled from: CornerRadius.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getZero-kKHJgLs, reason: not valid java name */
        public final long m1157getZerokKHJgLs() {
            return CornerRadius.Zero;
        }
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1156toStringimpl(long j) {
        if (m1153getXimpl(j) == m1154getYimpl(j)) {
            return "CornerRadius.circular(" + GeometryUtilsKt.toStringAsFixed(m1153getXimpl(j), 1) + CoreConstants.RIGHT_PARENTHESIS_CHAR;
        }
        return "CornerRadius.elliptical(" + GeometryUtilsKt.toStringAsFixed(m1153getXimpl(j), 1) + ", " + GeometryUtilsKt.toStringAsFixed(m1154getYimpl(j), 1) + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }
}
