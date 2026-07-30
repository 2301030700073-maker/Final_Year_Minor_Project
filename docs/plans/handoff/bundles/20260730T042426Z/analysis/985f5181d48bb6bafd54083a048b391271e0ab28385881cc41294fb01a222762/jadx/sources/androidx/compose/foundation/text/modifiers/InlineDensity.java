package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.unit.Density;
import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: InlineDensity.kt */
/* loaded from: classes.dex */
public abstract class InlineDensity {
    public static final Companion Companion = new Companion(null);
    private static final long Unspecified = m514constructorimpl(Float.NaN, Float.NaN);

    /* renamed from: constructor-impl, reason: not valid java name */
    private static long m515constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m517equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: getDensity-impl, reason: not valid java name */
    public static final float m518getDensityimpl(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    /* renamed from: getFontScale-impl, reason: not valid java name */
    public static final float m519getFontScaleimpl(long j) {
        return Float.intBitsToFloat((int) (j & BodyPartID.bodyIdMax));
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m516constructorimpl(Density density) {
        return m514constructorimpl(density.getDensity(), density.getFontScale());
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m520toStringimpl(long j) {
        return "InlineDensity(density=" + m518getDensityimpl(j) + ", fontScale=" + m519getFontScaleimpl(j) + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    /* compiled from: InlineDensity.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getUnspecified-L26CHvs, reason: not valid java name */
        public final long m521getUnspecifiedL26CHvs() {
            return InlineDensity.Unspecified;
        }
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m514constructorimpl(float f, float f2) {
        return m515constructorimpl((Float.floatToRawIntBits(f2) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f) << 32));
    }
}
