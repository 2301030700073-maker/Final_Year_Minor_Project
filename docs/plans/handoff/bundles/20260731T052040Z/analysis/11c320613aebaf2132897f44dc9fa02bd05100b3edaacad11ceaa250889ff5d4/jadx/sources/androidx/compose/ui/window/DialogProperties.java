package androidx.compose.ui.window;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DialogProperties {
    public final boolean dismissOnBackPress = true;
    public final boolean dismissOnClickOutside = true;
    public final SecureFlagPolicy securePolicy = SecureFlagPolicy.Inherit;
    public final boolean usePlatformDefaultWidth = true;
    public final boolean decorFitsSystemWindows = true;
    public final String windowTitle = "";
    public final int windowType = 2;

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
}
