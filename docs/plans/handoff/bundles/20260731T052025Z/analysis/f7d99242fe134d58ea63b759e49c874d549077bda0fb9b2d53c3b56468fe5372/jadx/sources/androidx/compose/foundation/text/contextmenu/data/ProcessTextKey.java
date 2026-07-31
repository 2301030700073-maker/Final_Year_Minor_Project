package androidx.compose.foundation.text.contextmenu.data;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ProcessTextKey {
    public final int id;

    public ProcessTextKey(int i) {
        this.id = i;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ProcessTextKey) {
            return this.id == ((ProcessTextKey) obj).id;
        }
        return false;
    }

    public final int hashCode() {
        return this.id;
    }
}
