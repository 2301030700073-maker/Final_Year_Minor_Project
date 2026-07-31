package androidx.compose.ui.input;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
