package androidx.compose.ui.window;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DialogProperties {
    public final boolean decorFitsSystemWindows;
    public final boolean dismissOnBackPress;
    public final boolean dismissOnClickOutside;
    public final SecureFlagPolicy securePolicy;
    public final boolean usePlatformDefaultWidth;
    public final String windowTitle;
    public final int windowType;

    public DialogProperties(boolean z, boolean z2, boolean z3) {
        this.dismissOnBackPress = z;
        this.dismissOnClickOutside = z2;
        this.securePolicy = SecureFlagPolicy.Inherit;
        this.usePlatformDefaultWidth = z3;
        this.decorFitsSystemWindows = true;
        this.windowTitle = "";
        this.windowType = 2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DialogProperties)) {
            return false;
        }
        DialogProperties dialogProperties = (DialogProperties) obj;
        return this.dismissOnBackPress == dialogProperties.dismissOnBackPress && this.dismissOnClickOutside == dialogProperties.dismissOnClickOutside && this.securePolicy == dialogProperties.securePolicy && this.usePlatformDefaultWidth == dialogProperties.usePlatformDefaultWidth && this.decorFitsSystemWindows == dialogProperties.decorFitsSystemWindows && this.windowType == dialogProperties.windowType;
    }

    public final int hashCode() {
        return (((((((this.securePolicy.hashCode() + ((((this.dismissOnBackPress ? 1231 : 1237) * 31) + (this.dismissOnClickOutside ? 1231 : 1237)) * 31)) * 31) + (this.usePlatformDefaultWidth ? 1231 : 1237)) * 31) + (this.decorFitsSystemWindows ? 1231 : 1237)) * 31) + this.windowType) * 31;
    }

    public /* synthetic */ DialogProperties(int i, boolean z, boolean z2) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? true : z2, true);
    }
}
