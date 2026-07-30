package androidx.compose.ui.layout;

import androidx.compose.ui.internal.InlineClassHelperKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: ScaleFactor.kt */
/* loaded from: classes.dex */
public abstract class ScaleFactor {
    public static final Companion Companion = new Companion(null);
    private static final long Unspecified = ScaleFactorKt.ScaleFactor(Float.NaN, Float.NaN);

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m1785constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1786equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: getScaleX-impl, reason: not valid java name */
    public static final float m1787getScaleXimpl(long j) {
        if (!(j != Unspecified)) {
            InlineClassHelperKt.throwIllegalStateException("ScaleFactor is unspecified");
        }
        return Float.intBitsToFloat((int) (j >> 32));
    }

    /* renamed from: getScaleY-impl, reason: not valid java name */
    public static final float m1788getScaleYimpl(long j) {
        if (!(j != Unspecified)) {
            InlineClassHelperKt.throwIllegalStateException("ScaleFactor is unspecified");
        }
        return Float.intBitsToFloat((int) (j & BodyPartID.bodyIdMax));
    }

    /* compiled from: ScaleFactor.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getUnspecified-_hLwfpc, reason: not valid java name */
        public final long m1789getUnspecified_hLwfpc() {
            return ScaleFactor.Unspecified;
        }
    }
}
