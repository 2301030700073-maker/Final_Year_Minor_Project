package androidx.compose.ui.text.style;

import androidx.compose.animation.ChangeSize$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextMotion.android.kt */
/* loaded from: classes.dex */
public final class TextMotion {
    private static final TextMotion Animated;
    public static final Companion Companion;
    private static final TextMotion Static;
    private final int linearity;
    private final boolean subpixelTextPositioning;

    public /* synthetic */ TextMotion(int i, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, z);
    }

    private TextMotion(int i, boolean z) {
        this.linearity = i;
        this.subpixelTextPositioning = z;
    }

    /* renamed from: getLinearity-4e0Vf04$ui_text_release, reason: not valid java name */
    public final int m2372getLinearity4e0Vf04$ui_text_release() {
        return this.linearity;
    }

    public final boolean getSubpixelTextPositioning$ui_text_release() {
        return this.subpixelTextPositioning;
    }

    /* compiled from: TextMotion.android.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TextMotion getStatic() {
            return TextMotion.Static;
        }
    }

    static {
        DefaultConstructorMarker defaultConstructorMarker = null;
        Companion = new Companion(defaultConstructorMarker);
        Linearity.Companion companion = Linearity.Companion;
        Static = new TextMotion(companion.m2376getFontHinting4e0Vf04(), false, defaultConstructorMarker);
        Animated = new TextMotion(companion.m2377getLinear4e0Vf04(), true, defaultConstructorMarker);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextMotion)) {
            return false;
        }
        TextMotion textMotion = (TextMotion) obj;
        return Linearity.m2374equalsimpl0(this.linearity, textMotion.linearity) && this.subpixelTextPositioning == textMotion.subpixelTextPositioning;
    }

    public int hashCode() {
        return (Linearity.m2375hashCodeimpl(this.linearity) * 31) + ChangeSize$$ExternalSyntheticBackport0.m(this.subpixelTextPositioning);
    }

    public String toString() {
        return Intrinsics.areEqual(this, Static) ? "TextMotion.Static" : Intrinsics.areEqual(this, Animated) ? "TextMotion.Animated" : "Invalid";
    }

    /* compiled from: TextMotion.android.kt */
    public static final class Linearity {
        public static final Companion Companion = new Companion(null);
        private static final int Linear = m2373constructorimpl(1);
        private static final int FontHinting = m2373constructorimpl(2);
        private static final int None = m2373constructorimpl(3);

        /* renamed from: constructor-impl, reason: not valid java name */
        private static int m2373constructorimpl(int i) {
            return i;
        }

        /* renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m2374equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* renamed from: hashCode-impl, reason: not valid java name */
        public static int m2375hashCodeimpl(int i) {
            return i;
        }

        /* compiled from: TextMotion.android.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* renamed from: getLinear-4e0Vf04, reason: not valid java name */
            public final int m2377getLinear4e0Vf04() {
                return Linearity.Linear;
            }

            /* renamed from: getFontHinting-4e0Vf04, reason: not valid java name */
            public final int m2376getFontHinting4e0Vf04() {
                return Linearity.FontHinting;
            }

            /* renamed from: getNone-4e0Vf04, reason: not valid java name */
            public final int m2378getNone4e0Vf04() {
                return Linearity.None;
            }
        }
    }
}
