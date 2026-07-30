package androidx.compose.ui.text.style;

import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: LineHeightStyle.kt */
/* loaded from: classes.dex */
public final class LineHeightStyle {
    public static final Companion Companion;
    private static final LineHeightStyle Default;
    private final float alignment;
    private final int trim;

    public /* synthetic */ LineHeightStyle(float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(f, i);
    }

    private LineHeightStyle(float f, int i) {
        this.alignment = f;
        this.trim = i;
    }

    /* renamed from: getAlignment-PIaL0Z0, reason: not valid java name */
    public final float m2325getAlignmentPIaL0Z0() {
        return this.alignment;
    }

    /* renamed from: getTrim-EVpEnUU, reason: not valid java name */
    public final int m2326getTrimEVpEnUU() {
        return this.trim;
    }

    /* compiled from: LineHeightStyle.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final LineHeightStyle getDefault() {
            return LineHeightStyle.Default;
        }
    }

    static {
        DefaultConstructorMarker defaultConstructorMarker = null;
        Companion = new Companion(defaultConstructorMarker);
        Default = new LineHeightStyle(Alignment.Companion.m2332getProportionalPIaL0Z0(), Trim.Companion.m2339getBothEVpEnUU(), defaultConstructorMarker);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LineHeightStyle)) {
            return false;
        }
        LineHeightStyle lineHeightStyle = (LineHeightStyle) obj;
        return Alignment.m2328equalsimpl0(this.alignment, lineHeightStyle.alignment) && Trim.m2334equalsimpl0(this.trim, lineHeightStyle.trim);
    }

    public int hashCode() {
        return (Alignment.m2329hashCodeimpl(this.alignment) * 31) + Trim.m2335hashCodeimpl(this.trim);
    }

    public String toString() {
        return "LineHeightStyle(alignment=" + ((Object) Alignment.m2330toStringimpl(this.alignment)) + ", trim=" + ((Object) Trim.m2338toStringimpl(this.trim)) + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    /* compiled from: LineHeightStyle.kt */
    public static final class Trim {
        public static final Companion Companion = new Companion(null);
        private static final int FirstLineTop = m2333constructorimpl(1);
        private static final int LastLineBottom = m2333constructorimpl(16);
        private static final int Both = m2333constructorimpl(17);
        private static final int None = m2333constructorimpl(0);

        /* renamed from: constructor-impl, reason: not valid java name */
        private static int m2333constructorimpl(int i) {
            return i;
        }

        /* renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m2334equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* renamed from: hashCode-impl, reason: not valid java name */
        public static int m2335hashCodeimpl(int i) {
            return i;
        }

        /* renamed from: isTrimFirstLineTop-impl$ui_text_release, reason: not valid java name */
        public static final boolean m2336isTrimFirstLineTopimpl$ui_text_release(int i) {
            return (i & 1) > 0;
        }

        /* renamed from: isTrimLastLineBottom-impl$ui_text_release, reason: not valid java name */
        public static final boolean m2337isTrimLastLineBottomimpl$ui_text_release(int i) {
            return (i & 16) > 0;
        }

        /* renamed from: toString-impl, reason: not valid java name */
        public static String m2338toStringimpl(int i) {
            return i == FirstLineTop ? "LineHeightStyle.Trim.FirstLineTop" : i == LastLineBottom ? "LineHeightStyle.Trim.LastLineBottom" : i == Both ? "LineHeightStyle.Trim.Both" : i == None ? "LineHeightStyle.Trim.None" : "Invalid";
        }

        /* compiled from: LineHeightStyle.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* renamed from: getBoth-EVpEnUU, reason: not valid java name */
            public final int m2339getBothEVpEnUU() {
                return Trim.Both;
            }

            /* renamed from: getNone-EVpEnUU, reason: not valid java name */
            public final int m2340getNoneEVpEnUU() {
                return Trim.None;
            }
        }
    }

    /* compiled from: LineHeightStyle.kt */
    public static final class Alignment {
        public static final Companion Companion = new Companion(null);
        private static final float Top = m2327constructorimpl(0.0f);
        private static final float Center = m2327constructorimpl(0.5f);
        private static final float Proportional = m2327constructorimpl(-1.0f);
        private static final float Bottom = m2327constructorimpl(1.0f);

        /* renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m2328equalsimpl0(float f, float f2) {
            return Float.compare(f, f2) == 0;
        }

        /* renamed from: hashCode-impl, reason: not valid java name */
        public static int m2329hashCodeimpl(float f) {
            return Float.floatToIntBits(f);
        }

        /* renamed from: constructor-impl, reason: not valid java name */
        public static float m2327constructorimpl(float f) {
            if ((0.0f > f || f > 1.0f) && f != -1.0f) {
                throw new IllegalStateException("topRatio should be in [0..1] range or -1");
            }
            return f;
        }

        /* renamed from: toString-impl, reason: not valid java name */
        public static String m2330toStringimpl(float f) {
            if (f == Top) {
                return "LineHeightStyle.Alignment.Top";
            }
            if (f == Center) {
                return "LineHeightStyle.Alignment.Center";
            }
            if (f == Proportional) {
                return "LineHeightStyle.Alignment.Proportional";
            }
            if (f == Bottom) {
                return "LineHeightStyle.Alignment.Bottom";
            }
            return "LineHeightStyle.Alignment(topPercentage = " + f + CoreConstants.RIGHT_PARENTHESIS_CHAR;
        }

        /* compiled from: LineHeightStyle.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* renamed from: getCenter-PIaL0Z0, reason: not valid java name */
            public final float m2331getCenterPIaL0Z0() {
                return Alignment.Center;
            }

            /* renamed from: getProportional-PIaL0Z0, reason: not valid java name */
            public final float m2332getProportionalPIaL0Z0() {
                return Alignment.Proportional;
            }
        }
    }
}
