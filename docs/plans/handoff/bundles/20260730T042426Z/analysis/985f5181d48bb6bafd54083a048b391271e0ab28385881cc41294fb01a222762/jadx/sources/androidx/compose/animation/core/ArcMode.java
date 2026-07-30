package androidx.compose.animation.core;

import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: VectorizedAnimationSpec.kt */
/* loaded from: classes.dex */
public abstract class ArcMode {
    public static final Companion Companion = new Companion(null);
    private static final int ArcAbove = m51constructorimpl(5);
    private static final int ArcBelow = m51constructorimpl(4);
    private static final int ArcLinear = m51constructorimpl(0);

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m51constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m52equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m53hashCodeimpl(int i) {
        return i;
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m54toStringimpl(int i) {
        return "ArcMode(value=" + i + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    /* compiled from: VectorizedAnimationSpec.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getArcLinear--9T-Mq4, reason: not valid java name */
        public final int m55getArcLinear9TMq4() {
            return ArcMode.ArcLinear;
        }
    }
}
