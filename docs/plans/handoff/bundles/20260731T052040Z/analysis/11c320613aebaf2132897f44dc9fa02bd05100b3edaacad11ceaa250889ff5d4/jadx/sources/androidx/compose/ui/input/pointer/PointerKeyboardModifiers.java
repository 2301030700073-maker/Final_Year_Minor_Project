package androidx.compose.ui.input.pointer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PointerKeyboardModifiers {
    public final int packedValue;

    public final boolean equals(Object obj) {
        if (obj instanceof PointerKeyboardModifiers) {
            return this.packedValue == ((PointerKeyboardModifiers) obj).packedValue;
        }
        return false;
    }

    public final int hashCode() {
        return this.packedValue;
    }

    public final String toString() {
        return "PointerKeyboardModifiers(packedValue=" + this.packedValue + ')';
    }
}
