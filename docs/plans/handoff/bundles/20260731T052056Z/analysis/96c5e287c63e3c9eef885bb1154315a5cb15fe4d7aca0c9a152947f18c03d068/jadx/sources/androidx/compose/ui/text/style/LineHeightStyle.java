package androidx.compose.ui.text.style;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LineHeightStyle {
    public static final LineHeightStyle Default = new LineHeightStyle(17, Alignment.Proportional, 0);
    public final float alignment;
    public final int mode;
    public final int trim;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Alignment {
        public static final float Bottom;
        public static final float Center;
        public static final float Proportional;
        public final float topRatio;

        static {
            m670constructorimpl(RecyclerView.DECELERATION_RATE);
            m670constructorimpl(0.5f);
            Center = 0.5f;
            m670constructorimpl(-1.0f);
            Proportional = -1.0f;
            m670constructorimpl(1.0f);
            Bottom = 1.0f;
        }

        /* renamed from: constructor-impl, reason: not valid java name */
        public static void m670constructorimpl(float f) {
            if ((RecyclerView.DECELERATION_RATE > f || f > 1.0f) && f != -1.0f) {
                InlineClassHelperKt.throwIllegalStateException("topRatio should be in [0..1] range or -1");
            }
        }

        /* renamed from: toString-impl, reason: not valid java name */
        public static String m671toStringimpl(float f) {
            if (f == RecyclerView.DECELERATION_RATE) {
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
            return "LineHeightStyle.Alignment(topPercentage = " + f + ')';
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Alignment) {
                return Float.compare(this.topRatio, ((Alignment) obj).topRatio) == 0;
            }
            return false;
        }

        public final int hashCode() {
            return Float.floatToIntBits(this.topRatio);
        }

        public final String toString() {
            return m671toStringimpl(this.topRatio);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Mode {
        public final int value;

        public final boolean equals(Object obj) {
            if (obj instanceof Mode) {
                return this.value == ((Mode) obj).value;
            }
            return false;
        }

        public final int hashCode() {
            return this.value;
        }

        public final String toString() {
            int i = this.value;
            return i == 0 ? "LineHeightStyle.Mode.Fixed" : i == 1 ? "LineHeightStyle.Mode.Minimum" : i == 2 ? "LineHeightStyle.Mode.Tight" : "Invalid";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Trim {
        public final int value;

        public final boolean equals(Object obj) {
            if (obj instanceof Trim) {
                return this.value == ((Trim) obj).value;
            }
            return false;
        }

        public final int hashCode() {
            return this.value;
        }

        public final String toString() {
            int i = this.value;
            return i == 1 ? "LineHeightStyle.Trim.FirstLineTop" : i == 16 ? "LineHeightStyle.Trim.LastLineBottom" : i == 17 ? "LineHeightStyle.Trim.Both" : i == 0 ? "LineHeightStyle.Trim.None" : "Invalid";
        }
    }

    public LineHeightStyle(int i, float f, int i2) {
        this.alignment = f;
        this.trim = i;
        this.mode = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LineHeightStyle)) {
            return false;
        }
        LineHeightStyle lineHeightStyle = (LineHeightStyle) obj;
        float f = lineHeightStyle.alignment;
        float f2 = Alignment.Center;
        return Float.compare(this.alignment, f) == 0 && this.trim == lineHeightStyle.trim && this.mode == lineHeightStyle.mode;
    }

    public final int hashCode() {
        float f = Alignment.Center;
        return (((Float.floatToIntBits(this.alignment) * 31) + this.trim) * 31) + this.mode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LineHeightStyle(alignment=");
        sb.append((Object) Alignment.m671toStringimpl(this.alignment));
        sb.append(", trim=");
        String str = "Invalid";
        int i = this.trim;
        sb.append((Object) (i == 1 ? "LineHeightStyle.Trim.FirstLineTop" : i == 16 ? "LineHeightStyle.Trim.LastLineBottom" : i == 17 ? "LineHeightStyle.Trim.Both" : i == 0 ? "LineHeightStyle.Trim.None" : "Invalid"));
        sb.append(",mode=");
        int i2 = this.mode;
        if (i2 == 0) {
            str = "LineHeightStyle.Mode.Fixed";
        } else if (i2 == 1) {
            str = "LineHeightStyle.Mode.Minimum";
        } else if (i2 == 2) {
            str = "LineHeightStyle.Mode.Tight";
        }
        sb.append((Object) str);
        sb.append(')');
        return sb.toString();
    }
}
