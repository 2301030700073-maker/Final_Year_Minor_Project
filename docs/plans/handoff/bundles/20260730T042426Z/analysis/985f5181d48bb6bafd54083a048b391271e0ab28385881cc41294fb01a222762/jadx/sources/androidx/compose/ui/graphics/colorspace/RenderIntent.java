package androidx.compose.ui.graphics.colorspace;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: RenderIntent.kt */
/* loaded from: classes.dex */
public abstract class RenderIntent {
    public static final Companion Companion = new Companion(null);
    private static final int Perceptual = m1461constructorimpl(0);
    private static final int Relative = m1461constructorimpl(1);
    private static final int Saturation = m1461constructorimpl(2);
    private static final int Absolute = m1461constructorimpl(3);

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m1461constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1462equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* compiled from: RenderIntent.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getPerceptual-uksYyKA, reason: not valid java name */
        public final int m1464getPerceptualuksYyKA() {
            return RenderIntent.Perceptual;
        }

        /* renamed from: getRelative-uksYyKA, reason: not valid java name */
        public final int m1465getRelativeuksYyKA() {
            return RenderIntent.Relative;
        }

        /* renamed from: getAbsolute-uksYyKA, reason: not valid java name */
        public final int m1463getAbsoluteuksYyKA() {
            return RenderIntent.Absolute;
        }
    }
}
