package androidx.compose.ui.text.style;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
