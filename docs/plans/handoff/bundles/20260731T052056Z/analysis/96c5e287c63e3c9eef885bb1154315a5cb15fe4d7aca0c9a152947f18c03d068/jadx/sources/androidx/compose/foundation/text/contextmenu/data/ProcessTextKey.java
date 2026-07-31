package androidx.compose.foundation.text.contextmenu.data;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
