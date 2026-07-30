package androidx.compose.ui.window;

import androidx.compose.animation.ChangeSize$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: AndroidPopup.android.kt */
/* loaded from: classes.dex */
public final class PopupProperties {
    private final boolean dismissOnBackPress;
    private final boolean dismissOnClickOutside;
    private final boolean excludeFromSystemGesture;
    private final int flags;
    private final boolean inheritSecurePolicy;
    private final boolean usePlatformDefaultWidth;

    public PopupProperties(int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        this.flags = i;
        this.inheritSecurePolicy = z;
        this.dismissOnBackPress = z2;
        this.dismissOnClickOutside = z3;
        this.excludeFromSystemGesture = z4;
        this.usePlatformDefaultWidth = z5;
    }

    public final int getFlags$ui_release() {
        return this.flags;
    }

    public final boolean getInheritSecurePolicy$ui_release() {
        return this.inheritSecurePolicy;
    }

    public final boolean getDismissOnBackPress() {
        return this.dismissOnBackPress;
    }

    public final boolean getDismissOnClickOutside() {
        return this.dismissOnClickOutside;
    }

    public final boolean getExcludeFromSystemGesture() {
        return this.excludeFromSystemGesture;
    }

    public final boolean getUsePlatformDefaultWidth() {
        return this.usePlatformDefaultWidth;
    }

    public /* synthetic */ PopupProperties(boolean z, boolean z2, boolean z3, boolean z4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? true : z2, (i & 4) != 0 ? true : z3, (i & 8) != 0 ? true : z4);
    }

    public PopupProperties(boolean z, boolean z2, boolean z3, boolean z4) {
        this(z, z2, z3, SecureFlagPolicy.Inherit, true, z4);
    }

    public /* synthetic */ PopupProperties(boolean z, boolean z2, boolean z3, SecureFlagPolicy secureFlagPolicy, boolean z4, boolean z5, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? true : z2, (i & 4) != 0 ? true : z3, (i & 8) != 0 ? SecureFlagPolicy.Inherit : secureFlagPolicy, (i & 16) != 0 ? true : z4, (i & 32) == 0 ? z5 : true);
    }

    public PopupProperties(boolean z, boolean z2, boolean z3, SecureFlagPolicy secureFlagPolicy, boolean z4, boolean z5) {
        this(z, z2, z3, secureFlagPolicy, z4, z5, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PopupProperties(boolean r8, boolean r9, boolean r10, androidx.compose.ui.window.SecureFlagPolicy r11, boolean r12, boolean r13, boolean r14) {
        /*
            r7 = this;
            int r1 = androidx.compose.ui.window.AndroidPopup_androidKt.access$createFlags(r8, r11, r13)
            androidx.compose.ui.window.SecureFlagPolicy r8 = androidx.compose.ui.window.SecureFlagPolicy.Inherit
            if (r11 != r8) goto Lb
            r8 = 1
        L9:
            r2 = r8
            goto Ld
        Lb:
            r8 = 0
            goto L9
        Ld:
            r0 = r7
            r3 = r9
            r4 = r10
            r5 = r12
            r6 = r14
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.window.PopupProperties.<init>(boolean, boolean, boolean, androidx.compose.ui.window.SecureFlagPolicy, boolean, boolean, boolean):void");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PopupProperties)) {
            return false;
        }
        PopupProperties popupProperties = (PopupProperties) obj;
        return this.flags == popupProperties.flags && this.inheritSecurePolicy == popupProperties.inheritSecurePolicy && this.dismissOnBackPress == popupProperties.dismissOnBackPress && this.dismissOnClickOutside == popupProperties.dismissOnClickOutside && this.excludeFromSystemGesture == popupProperties.excludeFromSystemGesture && this.usePlatformDefaultWidth == popupProperties.usePlatformDefaultWidth;
    }

    public int hashCode() {
        return (((((((((this.flags * 31) + ChangeSize$$ExternalSyntheticBackport0.m(this.inheritSecurePolicy)) * 31) + ChangeSize$$ExternalSyntheticBackport0.m(this.dismissOnBackPress)) * 31) + ChangeSize$$ExternalSyntheticBackport0.m(this.dismissOnClickOutside)) * 31) + ChangeSize$$ExternalSyntheticBackport0.m(this.excludeFromSystemGesture)) * 31) + ChangeSize$$ExternalSyntheticBackport0.m(this.usePlatformDefaultWidth);
    }
}
