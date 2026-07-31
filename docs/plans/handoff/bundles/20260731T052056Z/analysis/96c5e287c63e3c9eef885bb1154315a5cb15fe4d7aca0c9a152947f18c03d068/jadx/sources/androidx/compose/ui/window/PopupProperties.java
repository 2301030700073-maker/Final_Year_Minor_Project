package androidx.compose.ui.window;

import androidx.compose.runtime.StaticProvidableCompositionLocal;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PopupProperties {
    public final boolean dismissOnBackPress;
    public final boolean dismissOnClickOutside;
    public final boolean excludeFromSystemGesture;
    public final int flags;
    public final boolean inheritSecurePolicy;
    public final int windowType;

    public PopupProperties(boolean z, SecureFlagPolicy secureFlagPolicy, boolean z2, int i) {
        StaticProvidableCompositionLocal staticProvidableCompositionLocal = AndroidPopup_androidKt.LocalPopupTestTag;
        int i2 = !z ? 262152 : 262144;
        i2 = secureFlagPolicy == SecureFlagPolicy.SecureOn ? i2 | 8192 : i2;
        i2 = z2 ? i2 : i2 | 512;
        boolean z3 = secureFlagPolicy == SecureFlagPolicy.Inherit;
        this.flags = i2;
        this.inheritSecurePolicy = z3;
        this.dismissOnBackPress = true;
        this.dismissOnClickOutside = true;
        this.excludeFromSystemGesture = true;
        this.windowType = 1002;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PopupProperties)) {
            return false;
        }
        PopupProperties popupProperties = (PopupProperties) obj;
        return this.flags == popupProperties.flags && this.inheritSecurePolicy == popupProperties.inheritSecurePolicy && this.dismissOnBackPress == popupProperties.dismissOnBackPress && this.dismissOnClickOutside == popupProperties.dismissOnClickOutside && this.excludeFromSystemGesture == popupProperties.excludeFromSystemGesture && this.windowType == popupProperties.windowType;
    }

    public final int hashCode() {
        return ((((((((((((this.flags * 31) + (this.inheritSecurePolicy ? 1231 : 1237)) * 31) + (this.dismissOnBackPress ? 1231 : 1237)) * 31) + (this.dismissOnClickOutside ? 1231 : 1237)) * 31) + (this.excludeFromSystemGesture ? 1231 : 1237)) * 31) + 1237) * 31) + this.windowType) * 31;
    }

    public PopupProperties(boolean z) {
        this(z, SecureFlagPolicy.Inherit, true, 0);
    }
}
