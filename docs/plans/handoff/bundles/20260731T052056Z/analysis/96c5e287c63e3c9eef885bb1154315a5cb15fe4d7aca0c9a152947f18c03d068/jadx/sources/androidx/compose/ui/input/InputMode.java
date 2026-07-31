package androidx.compose.ui.input;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InputMode {
    public final int value;

    public final boolean equals(Object obj) {
        if (obj instanceof InputMode) {
            return this.value == ((InputMode) obj).value;
        }
        return false;
    }

    public final int hashCode() {
        return this.value;
    }

    public final String toString() {
        int i = this.value;
        return i == 1 ? "Touch" : i == 2 ? "Keyboard" : "Error";
    }
}
