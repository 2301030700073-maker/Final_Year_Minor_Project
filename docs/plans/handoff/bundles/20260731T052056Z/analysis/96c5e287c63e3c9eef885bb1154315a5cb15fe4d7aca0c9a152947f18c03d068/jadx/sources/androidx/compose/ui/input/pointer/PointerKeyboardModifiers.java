package androidx.compose.ui.input.pointer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
