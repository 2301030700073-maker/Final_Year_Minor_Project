package androidx.compose.ui.window;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DialogProperties {
    public final SecureFlagPolicy securePolicy = SecureFlagPolicy.Inherit;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DialogProperties) && this.securePolicy == ((DialogProperties) obj).securePolicy;
    }

    public final int hashCode() {
        return (((((((this.securePolicy.hashCode() + 1221152) * 31) + 1231) * 31) + 1231) * 31) + 2) * 31;
    }
}
