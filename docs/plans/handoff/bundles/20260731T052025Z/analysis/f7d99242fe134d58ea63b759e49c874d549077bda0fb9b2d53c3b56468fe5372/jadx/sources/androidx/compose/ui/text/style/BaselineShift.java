package androidx.compose.ui.text.style;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BaselineShift {
    public final float multiplier;

    public final boolean equals(Object obj) {
        if (obj instanceof BaselineShift) {
            return Float.compare(this.multiplier, ((BaselineShift) obj).multiplier) == 0;
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.multiplier);
    }

    public final String toString() {
        return "BaselineShift(multiplier=" + this.multiplier + ')';
    }
}
