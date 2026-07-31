package androidx.compose.ui.text.style;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
