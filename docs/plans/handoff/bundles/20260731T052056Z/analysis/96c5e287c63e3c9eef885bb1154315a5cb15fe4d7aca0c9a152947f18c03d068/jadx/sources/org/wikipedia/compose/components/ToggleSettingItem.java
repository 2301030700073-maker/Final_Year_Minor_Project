package org.wikipedia.compose.components;

import androidx.compose.animation.core.Animation;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ToggleSettingItem {
    public final String key;
    public final int subtitle;
    public final int title;

    public ToggleSettingItem(int i, int i2, String str) {
        str.getClass();
        this.title = i;
        this.subtitle = i2;
        this.key = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ToggleSettingItem)) {
            return false;
        }
        ToggleSettingItem toggleSettingItem = (ToggleSettingItem) obj;
        return this.title == toggleSettingItem.title && this.subtitle == toggleSettingItem.subtitle && Intrinsics.areEqual(this.key, toggleSettingItem.key);
    }

    public final int hashCode() {
        return this.key.hashCode() + (((this.title * 31) + this.subtitle) * 31);
    }

    public final String toString() {
        return Animation.CC.m(Animation.CC.m(this.title, this.subtitle, "ToggleSettingItem(title=", ", subtitle=", ", key="), this.key, ")");
    }
}
