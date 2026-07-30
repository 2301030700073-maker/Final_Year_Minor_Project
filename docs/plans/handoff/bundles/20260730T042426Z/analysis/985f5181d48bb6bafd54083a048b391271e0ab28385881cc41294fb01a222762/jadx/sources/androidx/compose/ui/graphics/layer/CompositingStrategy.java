package androidx.compose.ui.graphics.layer;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: CompositingStrategy.kt */
/* loaded from: classes.dex */
public abstract class CompositingStrategy {
    public static final Companion Companion = new Companion(null);
    private static final int Auto = m1522constructorimpl(0);
    private static final int Offscreen = m1522constructorimpl(1);
    private static final int ModulateAlpha = m1522constructorimpl(2);

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m1522constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1523equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* compiled from: CompositingStrategy.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getAuto-ke2Ky5w, reason: not valid java name */
        public final int m1524getAutoke2Ky5w() {
            return CompositingStrategy.Auto;
        }

        /* renamed from: getOffscreen-ke2Ky5w, reason: not valid java name */
        public final int m1526getOffscreenke2Ky5w() {
            return CompositingStrategy.Offscreen;
        }

        /* renamed from: getModulateAlpha-ke2Ky5w, reason: not valid java name */
        public final int m1525getModulateAlphake2Ky5w() {
            return CompositingStrategy.ModulateAlpha;
        }
    }
}
