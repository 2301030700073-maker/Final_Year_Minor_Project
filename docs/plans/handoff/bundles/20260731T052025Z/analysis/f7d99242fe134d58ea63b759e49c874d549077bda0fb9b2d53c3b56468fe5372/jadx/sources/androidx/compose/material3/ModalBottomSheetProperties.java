package androidx.compose.material3;

import androidx.compose.ui.window.SecureFlagPolicy;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ModalBottomSheetProperties {
    public final SecureFlagPolicy securePolicy = SecureFlagPolicy.Inherit;
    public final boolean shouldDismissOnBackPress = true;
    public final boolean shouldDismissOnClickOutside = true;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ModalBottomSheetProperties)) {
            return false;
        }
        ModalBottomSheetProperties modalBottomSheetProperties = (ModalBottomSheetProperties) obj;
        return this.securePolicy == modalBottomSheetProperties.securePolicy && this.shouldDismissOnClickOutside == modalBottomSheetProperties.shouldDismissOnClickOutside && this.shouldDismissOnBackPress == modalBottomSheetProperties.shouldDismissOnBackPress;
    }

    public final int hashCode() {
        return (((this.securePolicy.hashCode() * 31) + (this.shouldDismissOnBackPress ? 1231 : 1237)) * 29791) + (this.shouldDismissOnClickOutside ? 1231 : 1237);
    }
}
