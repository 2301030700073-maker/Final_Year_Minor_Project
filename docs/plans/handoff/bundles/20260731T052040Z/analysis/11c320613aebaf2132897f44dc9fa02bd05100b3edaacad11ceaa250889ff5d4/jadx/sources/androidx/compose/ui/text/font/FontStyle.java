package androidx.compose.ui.text.font;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FontStyle {
    public final int value;

    public final boolean equals(Object obj) {
        if (obj instanceof FontStyle) {
            return this.value == ((FontStyle) obj).value;
        }
        return false;
    }

    public final int hashCode() {
        return this.value;
    }

    public final String toString() {
        int i = this.value;
        return i == 0 ? "Normal" : i == 1 ? "Italic" : "Invalid";
    }
}
