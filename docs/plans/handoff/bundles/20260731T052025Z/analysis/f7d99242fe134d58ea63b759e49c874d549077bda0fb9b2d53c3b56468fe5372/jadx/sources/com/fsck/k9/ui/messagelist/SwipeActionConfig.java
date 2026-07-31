package com.fsck.k9.ui.messagelist;

import android.graphics.drawable.Drawable;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.Modifier;
import com.google.android.material.color.ColorRoles;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SwipeActionConfig {
    public final String actionName;
    public final String actionNameToggled;
    public final int backgroundColor;
    public final ColorRoles colorRoles;
    public final int foregroundColor;
    public final Drawable icon;
    public final Drawable iconToggled;

    public SwipeActionConfig(ColorRoles colorRoles, Drawable drawable, Drawable drawable2, String str, String str2) {
        this.colorRoles = colorRoles;
        this.icon = drawable;
        this.iconToggled = drawable2;
        this.actionName = str;
        this.actionNameToggled = str2;
        this.foregroundColor = colorRoles.accent;
        this.backgroundColor = colorRoles.onAccent;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SwipeActionConfig) {
            SwipeActionConfig swipeActionConfig = (SwipeActionConfig) obj;
            if (this.colorRoles == swipeActionConfig.colorRoles && Intrinsics.areEqual(this.icon, swipeActionConfig.icon) && Intrinsics.areEqual(this.iconToggled, swipeActionConfig.iconToggled) && this.actionName.equals(swipeActionConfig.actionName) && Intrinsics.areEqual(this.actionNameToggled, swipeActionConfig.actionNameToggled)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.colorRoles.hashCode() * 31;
        Drawable drawable = this.icon;
        int hashCode2 = (hashCode + (drawable == null ? 0 : drawable.hashCode())) * 31;
        Drawable drawable2 = this.iconToggled;
        int m = Modifier.CC.m((hashCode2 + (drawable2 == null ? 0 : drawable2.hashCode())) * 31, this.actionName, 31);
        String str = this.actionNameToggled;
        return m + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SwipeActionConfig(colorRoles=");
        sb.append(this.colorRoles);
        sb.append(", icon=");
        sb.append(this.icon);
        sb.append(", iconToggled=");
        sb.append(this.iconToggled);
        sb.append(", actionName=");
        sb.append(this.actionName);
        sb.append(", actionNameToggled=");
        return CameraDevices$CC.m(sb, this.actionNameToggled, ")");
    }
}
