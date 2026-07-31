package androidx.compose.ui.text.style;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextMotion {
    public final int linearity;
    public final boolean subpixelTextPositioning;
    public static final TextMotion Static = new TextMotion(2, false);
    public static final TextMotion Animated = new TextMotion(1, true);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Linearity {
        public final int value;

        public final boolean equals(Object obj) {
            if (obj instanceof Linearity) {
                return this.value == ((Linearity) obj).value;
            }
            return false;
        }

        public final int hashCode() {
            return this.value;
        }

        public final String toString() {
            int i = this.value;
            return i == 1 ? "Linearity.Linear" : i == 2 ? "Linearity.FontHinting" : i == 3 ? "Linearity.None" : "Invalid";
        }
    }

    public TextMotion(int i, boolean z) {
        this.linearity = i;
        this.subpixelTextPositioning = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextMotion)) {
            return false;
        }
        TextMotion textMotion = (TextMotion) obj;
        return this.linearity == textMotion.linearity && this.subpixelTextPositioning == textMotion.subpixelTextPositioning;
    }

    public final int hashCode() {
        return (this.linearity * 31) + (this.subpixelTextPositioning ? 1231 : 1237);
    }

    public final String toString() {
        return equals(Static) ? "TextMotion.Static" : equals(Animated) ? "TextMotion.Animated" : "Invalid";
    }
}
